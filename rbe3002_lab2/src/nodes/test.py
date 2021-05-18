#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Twist
from tf.transformations import euler_from_quaternion

if __name__ == '__main__':


	pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
	rospy.init_node('lab2test')
	
	while not rospy.is_shutdown():
		t = Twist()
		t.linear.x = .1
		pub.publish(t)
		rospy.sleep(3)
		t.linear.x = 0
		pub.publish(t)
		rospy.sleep(3)
