import os, yaml
import numpy as np
import matplotlib.pyplot as plt

from analog_sim.spice.ngspice import NgSpiceInterface
import analog_sim.tools.xschem as xschem
from analog_sim.plot.plot import *
from analog_sim.measure.measure import *

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
    #yaaade_obj.set_sim_command('.tran 10p 10u')
    yaaade_obj.set_sim_command('.tran 10p 10u')

    # Preparing the results variable
    results = []

    #running the simulation
    yaaade_obj.run_simulation()





if __name__ == "__main__":
    
    prep_sim()