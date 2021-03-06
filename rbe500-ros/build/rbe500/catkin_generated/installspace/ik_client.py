#!/usr/bin/env python2

from __future__ import print_function

import sys
import rospy
from rbe500.srv import *  #folder_name.srv

def ik_client(x, y, z):
    rospy.wait_for_service('ik')
    try:
        ik = rospy.ServiceProxy('ik', pose_input)
        resp1 = ik(x, y, z)
        return (resp1.q1, resp1.q2, resp1.d3)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y z]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 4:  #was three
        x = float(sys.argv[1])
        y = float(sys.argv[2])
        z = float(sys.argv[3])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting x: %s, y: %s, z: %s"%(x, y, z))
    print("%s, %s, %s = %s"%(x, y, z, ik_client(x, y, z)))
