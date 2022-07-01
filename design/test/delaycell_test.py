import os, yaml
import numpy as np
import matplotlib.pyplot as plt

from yaaade.spice.ngspice import NgSpiceInterface
import yaaade.tools.xschem as xschem
from yaaade.plot.plot import *
from yaaade.measure.measure import *

# import global settings
PROJECT_ROOT = os.environ.get('PROJECT_ROOT')
with open(PROJECT_ROOT+'/design/global_settings.yaml') as global_settings_file:
    global_settings = yaml.load(global_settings_file, Loader=yaml.FullLoader)
    pvt = global_settings['pvt']





if __name__ == "__main__":
    #test_op()
    #test_ac()
    print("Hello main!")