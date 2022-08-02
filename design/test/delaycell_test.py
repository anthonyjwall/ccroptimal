import os, yaml
import numpy as np
import matplotlib.pyplot as plt

from yaaade.spice.ngspice import NgSpiceInterface
import yaaade.tools.xschem as xschem
from yaaade.plot.plot import *
from yaaade.measure.measure import *

import time as systime
start_time = systime.time()

# import global settings
PROJECT_ROOT = os.environ.get('PROJECT_ROOT')
with open(PROJECT_ROOT+'/design/global_settings.yaml') as global_settings_file:
    global_settings = yaml.load(global_settings_file, Loader=yaml.FullLoader)
    pvt = global_settings['pvt']

def prep_sim():
    '''
        Function to generate the netlist and set up the simulation
    '''
    # create the test utility object
    xschem.netlist_generation(PROJECT_ROOT+'/design/test/delaycell_test.sch', 'rundir')

    # create the spice interface
    yaaade_obj = NgSpiceInterface(netlist_path='rundir/delaycell_test.spice')
    yaaade_obj.config['simulator']['shared'] = False
    yaaade_obj.config['simulator']['silent'] = True

    # append the simulation command
    yaaade_obj.set_sim_command('.tran 10p 2u')
    

    # Preparing the results variable
    results = []

    # Turning on the interactive plot mode in matplotlib
    #plt.ion()

    #running the simulation
    yaaade_obj.run_simulation()

    print("Simulation Complete!")

    
    time = np.array(yaaade_obj.simulation_data['time'])
    v_in = np.array(yaaade_obj.simulation_data['v(in)'])
    v_out = np.array(yaaade_obj.simulation_data['v(out)'])

    # Detecting the edges
    crossingInds_in, crossingDirs_in, crossingTimes_in = edgeDetector(time=time, signal=v_in, Threshold=0.9)
    crossingInds_out, crossingDirs_out, crossingTimes_out = edgeDetector(time=time, signal=v_out, Threshold=0.9)

    # Calculating the edge delays
    firstInptEdge = crossingDirs_in[0]

    if firstInptEdge == 1: 
        print("First input edge is rising")
    else:
        print("First input edge is falling")

    risingDelays = crossingTimes_out[crossingDirs_out == 1] - crossingTimes_in[crossingDirs_in == -1]
    fallingDelays = crossingTimes_out[crossingDirs_out == -1] - crossingTimes_in[crossingDirs_in == 1]
    
    avgRisingDelay = np.average(risingDelays)
    avgFallingDelay = np.average(fallingDelays)

    print("Average rising Delay: %.2f ps\nAverage falling delay: %.2f ps" % (avgRisingDelay*1e12, avgFallingDelay*1e12))

    # Plotting time domain waveforms and crossings
    crossingMarks_in = np.ones(crossingInds_in[0].size)*0.9
    crossingMarks_out = np.ones(crossingInds_out[0].size)*0.9
    plt.figure(1)
    plt.plot(time,v_out, label="v(out)")
    plt.plot(time,v_in, label="v(in)")
    plt.plot(crossingTimes_in, crossingMarks_in, label="v(in) crossings", marker="X", linestyle='')
    plt.plot(crossingTimes_out, crossingMarks_out, label="v(out) crossings", marker="X", linestyle='')
    plt.legend()
    plt.grid()
    

    # calculating the power consumption of the squaring inverters

    print("Process finished --- %s seconds ---" % (systime.time() - start_time))
    plt.show()


    


def edgeDetector(time, signal, Threshold=0.5):
    # time and signal are numpy arrays

    
    # Finding samples crossing Threshold
    aboveTh = (signal > Threshold)

    # Taking the first difference to find the crossings
    crossings = np.diff(aboveTh.astype(int))

    # Finding the indices where the crossings occur
    crossingInds = np.nonzero(crossings)
    
    # Finding the crossing directions
    crossingDirs = crossings[crossingInds]

    # Finding the time the crossings occur
    crossingTimes = time[crossingInds]

    # Returning the crossing indices and times
    return crossingInds, crossingDirs, crossingTimes


if __name__ == "__main__":
    
    prep_sim()