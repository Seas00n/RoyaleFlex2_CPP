import numpy as np
from lcm_msg.pcd_lcm.pcd_xyz import *
import lcm
import time


counter = 0
def my_handler(channel, data):
    global counter
    msg = pcd_xyz.decode(data)
    pcd_data = np.array([msg.pcd_x,msg.pcd_y,msg.pcd_z])
    pcd_data = (pcd_data-10000)/300.0# int16_t to float
    counter += 1
    print("Frame{}".format(counter))

totaltimestep = 800


if __name__=='__main__':
    lc = lcm.LCM()
    pcd_data = pcd_xyz()
    subscriber = lc.subscribe("PCD_DATA",my_handler)
    try:
        for i in range(totaltimestep):
            lc.handle()
    except KeyboardInterrupt:
        pass