#!/usr/bin/env python2

from __future__ import print_function

from rbe500.srv import pose_input,pose_inputResponse
import numpy as np
import rospy

def converter(req):
    print("Values got [%s, %s, %s]"%(req.x, req.y, req.z, ))
    # User Variables
    h = 1 
    a1 = 1 
    l2 = 2
    l3 = 0
    
    d3=req.z-h+l3
	
    D = (req.x*req.x+req.y*req.y-(a1)*(a1)-l2*l2)/(2*a1*l2) 
    q2 = np.arctan2(np.sqrt(1-D*D),D)
    
    q1 = np.arctan2(req.y,req.x) - np.arctan2(a1+l2*np.cos(q2),l2*np.sin(q2))   
    print(q1,q2)
    return pose_inputResponse(q1, q2, d3)

def add_two_ints_server():
    rospy.init_node('ik_server')
    s = rospy.Service('ik', pose_input, converter)
    print("Ready to convert pose to angle/ distance")
    rospy.spin()

if __name__ == "__main__":
    add_two_ints_server()

