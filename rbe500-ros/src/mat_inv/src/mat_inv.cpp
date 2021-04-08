#include "ros/ros.h"
#include "std_msgs/Float64MultiArray.h"
#include <Eigen/Dense>

void matInvCallback(const std_msgs::Float64MultiArray::ConstPtr& msg){
	int input_size = msg->data.size();
	int col_size = std::sqrt(input_size);

	Eigen::MatrixXd input_matrix(col_size, col_size);

	for (int i = 0; i < col_size; i++){
		for (int j = 0; j < col_size; j++){
			input_matrix(i,j) = msg->data[i*col_size+j];
		}
	}

	Eigen::MatrixXd result_matrix(col_size, col_size);
	result_matrix = input_matrix.inverse();

	for (int i = 0; i < col_size; i++){
                for (int j = 0; j < col_size; j++){
			std::cout<<result_matrix(i,j)<<"   ";
                }
		std::cout<<std::endl;
        }
}


int main(int argc, char **argv){
	ros::init(argc, argv, "mat_inv");	//init the ROS mode
	ros::NodeHandle n; 			//Create ROS Hanlde
	ros::Subscriber sub = n.subscribe("matrix_inverse", 1000, matInvCallback);

	ros::spin();
	std::cout<< "STARTED\n";
	return 0;
}
