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

    # Plotting the results
    time = np.array(yaaade_obj.simulation_data['time'])
    v_in = np.array(yaaade_obj.simulation_data['v(in)'])
    v_out = np.array(yaaade_obj.simulation_data['v(out)'])

    edgeDetector(time=time, signal=v_in, Threshold=0.9)

    plt.plot(time,v_out, label="v(out)")
    plt.plot(time,v_in, label="v(in)")
    plt.legend()
    plt.grid()

    print("Process finished --- %s seconds ---" % (systime.time() - start_time))

    plt.show()


def edgeDetector(time, signal, Threshold=0.5):
    # time and signal are numpy arrays

    
    # Finding samples crossing Threshold
    belowTh = (signal < Threshold)

    # Taking the first difference to find the crossings
    crossings = np.diff(belowTh.astype(int))

    # Finding the indices where the crossings occur
    crossingInds = np.nonzero(crossings)

    # Finding the time the crossings occur
    crossingTimes = time[crossingInds]

    # Returning the crossing indices and times
    return crossingInds, crossingTimes


if __name__ == "__main__":
    
    prep_sim()