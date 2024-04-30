
#include "ros/ros.h"
#include "/home/human/dobot/devel/include/dobot/CV.h"
#include "/home/human/dobot/devel/include/dobot/object.h"

dobot::CV dc;
ros::ServiceClient client;
void objectCallback(const dobot::object::ConstPtr& msg)
{
    // ROS_INFO("Object detected: [%s] at (%d, %d)", msg->name.c_str(), msg->x, msg->y);
    int8_t round = 40;
    int16_t gap = msg->x - 320;
    if(gap > round){
        dc.request.direction = 0;
        ROS_INFO("turn left");
        client.call(dc);
    }
    else if(gap < -round){
        dc.request.direction = 1;
        ROS_INFO("turn right");
        client.call(dc);
    }
    else{
        dc.request.direction = 2;
        ROS_INFO("over");
        client.call(dc);
    }
}

int main(int argc, char *argv[])
{
    // 2.初始化 ROS 节点
    ros::init(argc,argv,"bridge_yolo");
    // 3.创建 ROS 句柄
    ros::NodeHandle nh;
    // 4.创建 客户端 对象
    client = nh.serviceClient<dobot::CV>("bridge_yolo");
    ros::Subscriber sub = nh.subscribe<dobot::object>("yolo",1,objectCallback);
    //等待服务启动成功
    //方式1
    ros::service::waitForService("bridge_yolo");
    //方式2
    // client.waitForExistence();
    ros::spin();
    return 0;
}

