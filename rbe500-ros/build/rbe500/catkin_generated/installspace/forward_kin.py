#!/usr/bin/env python2
import rospy
from std_msgs.msg import Float64
from std_msgs.msg import String
from sensor_msgs.msg import JointState
import math
import numpy as np


def callback(data):

    #call data from joint_states topic using JointState message type
    #get position of joints
    j1 = data.position[0]
    j2 = data.position[1]
    j3 = data.position[2]
    
    #set parameters for link lengths
    h = 1
    L2 = 2 
    a1 = 1
    d3 = 1
    
    #calculate coordinates of the end effector tip
    xpos = L2*math.cos(j1) + a1*math.cos(j1) + d3*math.sin(j1)
    ypos = L2*math.sin(j1) - d3*math.cos(j1) + a1*math.sin(j1)
    zpos = d3 + h
    
    #rotation matrix calculations
    R = np.array([[math.cos(j1), -math.sin(j1), math.sin(j1)], [math.sin(j1), math.cos(j1), -math.cos(j1)], [0, 0, 1]])

    rospy.loginfo('Rotation matrix: ' + str(R) + '  Effector location is: x =  ' + str(xpos) + ' y = ' + str(ypos) + ' z = ' + str(zpos))
    pub = rospy.Publisher('EndEffectorPos', String)
    pub.publish('Rotation matrix: ' + str(R) + '  Effector location is: x =  ' + str(xpos) + ' y = ' + str(ypos) + ' z = ' + str(zpos))


def subscriber():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('subscriber', anonymous=True)

    rospy.Subscriber("joint_states", JointState, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    subscriber()
#

