#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Twist
from tf.transformations import euler_from_quaternion
import numpy as np

class Lab2:

	px=0
	py=0
	pitch=0

	pub_cmd_vel=0
	sub_odom=0
	sub_p=0

	def __init__(self):
		"""
		Class constructor
		"""
		### REQUIRED CREDIT
		### Initialize node, name it 'lab2'
		rospy.init_node('lab2')

		### '/cmd_vel' Publisher
		self.pub_cmd_vel = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

		### '/odom' Subscriber, call self.update_odometry
		self.sub_odom = rospy.Subscriber('/odom', Odometry, self.update_odometry)

		### '/move_base_simple/goal' Subscriber, call self.go_to
		self.sub_ps = rospy.Subscriber('/move_base_simple/goal', PoseStamped, self.go_to)

		### wait for pubs and subs to start
		rospy.sleep(5)
		print("lab2 started")

 


	def send_speed(self, linear_speed, angular_speed):
		"""
		Sends the speeds to the motors.
		:param linear_speed  [float] [m/s]   The forward linear speed.
		:param angular_speed [float] [rad/s] The angular speed for rotating around the body center.
		"""

		### REQUIRED CREDIT
		### Make a new Twist message
		msg_cmd_vel = Twist()

		# Linear velocity
		msg_cmd_vel.linear.x = linear_speed

		# Angular velocity
		msg_cmd_vel.angular.z = angular_speed

		### Publish the message
		self.pub_cmd_vel.publish(msg_cmd_vel)
		
		"""
		print("sent speed")
		print(angular_speed)
		"""

    
        
	def drive(self, distance, linear_speed):
		"""
		Drives the robot in a straight line.
		:param distance     [float] [m]   The distance to cover.
		:param linear_speed [float] [m/s] The forward linear speed.
		"""
		### REQUIRED CREDIT
		xi = self.px
		yi = self.py
		d = 0
		sleep_time = .05
		tol = linear_speed*.5
		
		self.send_speed(linear_speed, 0)
		while (d<distance-tol):
			d = ((xi-self.px)**2+(yi-self.py)**2)**.5
			rospy.sleep(sleep_time)
			print (d)

		self.send_speed(0, 0)



	def rotate(self, angle, aspeed):
		"""
		Rotates the robot around the body center by the given angle.
		:param angle         [float] [rad]   The distance to cover.
		:param angular_speed [float] [rad/s] The angular speed.
		"""

		### REQUIRED CREDIT
		sleep_time = .005
		tol = (aspeed*.2)
		a_start = self.pitch

		#find goal value
		goal = (a_start+angle)
		while(goal<0):
			goal = goal + (2*np.pi)
		goal = goal%(2*np.pi)

		self.send_speed(0, aspeed)
		while abs(self.pitch-goal) > tol:
			
			print (a_start)
			print (goal)
			print (self.pitch)
			print (self.pitch-goal)
			print ('')
			
			rospy.sleep(sleep_time)

		self.send_speed(0,0)



	def go_to(self, msg):
		"""
		Calls rotate(), drive(), and rotate() to attain a given pose.
		This method is a callback bound to a Subscriber.
		:param msg [PoseStamped] The target pose.
		"""
		### REQUIRED CREDIT
		x = msg.pose.position.x
		y = msg.pose.position.y

		quat_orig = msg.pose.orientation
		quat_list = [quat_orig.x, quat_orig.y, quat_orig.z, quat_orig.w]
		(roll, pitch, yaw) = euler_from_quaternion(quat_list)

		angle = yaw+np.pi

		d = ((self.px-x)**2+(self.py-y)**2)**(.5)
		a_to_goal = np.arctan2(y-self.py, x-self.px)	

		print ("Angle to Goal")
		print (a_to_goal)
		print ("Dist to Goal")
		print (d)
		
		self.rotate(a_to_goal, .5)
		self.drive(d, .22)

		print ("Rotate this Degrees")
		print (angle-self.pitch)

		self.rotate(angle-self.pitch, .5)



	def update_odometry(self, msg):
		"""
		Updates the current pose of the robot.
		This method is a callback bound to a Subscriber.
		:param msg [Odometry] The current odometry information.
		"""
		### REQUIRED CREDIT
		self.px = msg.pose.pose.position.x
		self.py = msg.pose.pose.position.y
		quat_orig = msg.pose.pose.orientation
		quat_list = [quat_orig.x, quat_orig.y, quat_orig.z, quat_orig.w]
		(roll, pitch, yaw) = euler_from_quaternion(quat_list)
		self.pitch = yaw+np.pi
		
		"""
		print("updated odom")
		print(self.px)
		print(self.py)
		print(self.pitch)
		"""
		

	def home(self):
		msg = PoseStamped()
		self.go_to(msg)



	def arc_to(self, position):
		"""
		Drives to a given position in an arc.
		:param msg [PoseStamped] The target pose.
		"""
		### EXTRA CREDIT
		pass



	def smooth_drive(self, distance, linear_speed):
		"""
		Drives the robot in a straight line by changing the actual speed smoothly.
		:param distance     [float] [m]   The distance to cover.
		:param linear_speed [float] [m/s] The maximum forward linear speed.
		"""
		### EXTRA CREDIT
		# TODO

		xi = self.px
		yi = self.py
		d = 0
		sleep_time = .05
		tol = linear_speed*.5
		
		while (d<distance-tol):
			d = ((xi-self.px)**2+(yi-self.py)**2)**.5
			speed = -4*linear_speed/distance**2*((d-distance/2.0)**2)+linear_speed
			self.send_speed(speed, 0)
			rospy.sleep(sleep_time)
			print (speed)

		self.send_speed(0, 0)


	def run(self):
		self.__init__()

		"""
		print ("here")
		msg = PoseStamped()
		msg.pose.position.x = 0
		msg.pose.position.y = 0
		self.go_to(msg)
		rospy.sleep(5)
		self.home()
		"""

		rospy.spin()

if __name__ == '__main__':
	Lab2().run()
	
