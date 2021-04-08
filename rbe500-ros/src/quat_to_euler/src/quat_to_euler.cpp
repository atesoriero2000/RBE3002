#include "ros/ros.h"
#include "geometry_msgs/Quaternion.h"

void matInvCallback(const geometry_msgs::Quaternion::ConstPtr& msg){

	double a = msg->w;
	double b = msg->x;
	double c = msg->y;
	double d = msg->z;

	double phi = atan(2*(a*b+c*d)/((a*a)-(b*b)-(c*c)+(d*d)));
	double theta = asin(2*(b*d-a*c));
	double psi = atan(2*(a*d+c*b)/((a*a)+(b*b)-(c*c)-(d*d)));

	std::cout<<phi<<std::endl;
	std::cout<<theta<<std::endl;
	std::cout<<psi<<std::endl;	
}


int main(int argc, char **argv){
        ros::init(argc, argv, "quat_to_euler");       //init the ROS mode
        ros::NodeHandle n;                      //Create ROS Hanlde
        ros::Subscriber sub = n.subscribe("quaternion_to_euler", 1000, matInvCallback);

        ros::spin();
        return 0;
}	
