#include "ros/ros.h"
#include <sensor_msgs/Image.h>
#include <std_msgs/Header.h>
#include "/home/human/dobot/devel/include/dobot/Avoid.h"

ros::ServiceClient client;
dobot::Avoid da;
void depthCallback(const sensor_msgs::ImageConstPtr& msg)
{
    int width = msg->width;
    int height = msg->height;
    uint16_t min_depth = std::numeric_limits<uint16_t>::max();
    uint16_t max_depth = 0;
    const uint16_t* depth_data = reinterpret_cast<const uint16_t*>(&msg->data[0]);
    for (int i = 0; i < width * height; ++i)
    {
        uint16_t depth_value = depth_data[i];
        if (depth_value > 0)
        {
            if(depth_value < min_depth)
            {
                min_depth = depth_value;
            }
            if(depth_value > max_depth)
            {
                max_depth = depth_value;
            }

            // ROS_INFO("Depth value at (%d, %d): %d", i % width, i / width, depth_value);
        }

    }
        // ROS_INFO("Min depth: %d, Max depth: %d", min_depth, max_depth);
    // ROS_INFO("Image encoding: %s",msg->encoding.c_str());
    if(min_depth == 65535 && max_depth == 0)  {
        da.request.isAvoid = 1;
        client.call(da);
    }
    else {
        da.request.isAvoid = 0;
        client.call(da);
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "avoid");
    ros::NodeHandle nh;
    client = nh.serviceClient<dobot::Avoid>("avoid_distance");
    ros::Subscriber sub = nh.subscribe("/camera/depth/image_raw", 1, depthCallback);
    ros::service::waitForService("avoid_distance");
    ros::spin();
    return 0;
}