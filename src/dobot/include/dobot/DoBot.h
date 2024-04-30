#include <ros/ros.h>
#include <std_msgs/String.h>
#include <string>
#include "/home/human/dobot/devel/include/dobot/object.h"
#include "/home/human/dobot/devel/include/dobot/CV.h"
#include <serial/serial.h>
#include <iostream>
#include <fcntl.h>
#include <unistd.h>
#include <vector>
#include <thread>

enum state
{
    STAND,
    FORWARD,
    BACKWARD,
    RIGHT,
    LEFT,
    SIT,
    STOP,
    WARN
};

const char *serialPort = "/dev/ttyUSB0";
const uint8_t forward = 0x37;
const uint8_t left = 0x34;
const uint8_t back = 0x36;
const uint8_t right = 0x35;
const uint8_t stand = 0x47;
const uint8_t stop = 0x4a;
const uint8_t sit = 0x44;
const int32_t distance = 100;
const int32_t width = 480;
const int32_t height = 640; //摄像头分辨率

class DoBot
{
private:
    static DoBot* instance;

    // ros::Subscriber sub = DOBOT.subscribe("object_location", 100, &DoBot::YOLOCallback, this);
    dobot::object obj;        // to access the visual info
    serial::Serial ser;            // serial transceiver information
    std_msgs::String messagebyser; // get messages from the serial
    std::vector<uint8_t> order;    // maybe change, the func is send order to the serial, but we need char type
    size_t size;
    state currentState;
    void OpenSer();
    void CloseSer();
    void SendOrder(uint8_t order);
    DoBot() 
    {
        ser.setPort(serialPort);
        ser.setBaudrate(115200);
        // 在这里进行其他的构造初始化操作
        serial::Timeout to = serial::Timeout::simpleTimeout(1000);
        try
        {
            ser.setTimeout(to);
        }
        catch (serial::IOException &e)
        {
            this->currentState = WARN;
            ROS_ERROR("Failed to open serial!!!!");
            return;
        }
    }
    DoBot(const DoBot&) = delete;
    DoBot& operator=(const DoBot&) = delete;
public:
    ros::NodeHandle DOBOT;
    bool doCorrectPos(dobot::CV::Request& req, dobot::CV::Response& resp);
    static DoBot* getInstance()
    {
        if (instance == nullptr)
        {
            instance = new DoBot();
        }
        return instance;
    }
    ~DoBot()
    {
    }

    void Process();
    int32_t GetDistance();
    std_msgs::String GetMessage();
    void Forward();
    void Left();
    void Right();
    void Back();
    void Stand(); // do nothing and wait for the assignment
    void Stop();  
};

void DoBot::OpenSer()
{
    try
    {
        ser.open();
    }
    catch (serial::SerialException &e)
    {
        if (!ser.isOpen())
        {
            this->currentState = WARN;
            ROS_ERROR_STREAM("Failed to open" << serialPort);
            ROS_ERROR("Please chece whether the serial port name is correct!!!");
            ROS_ERROR(e.what());
            return;
        }
    }
}

void DoBot::CloseSer()
{
    if (ser.isOpen())
    {
        try
        {
            ser.close();
        }
        catch (serial::SerialException &e)
        {
            this->currentState = WARN;
            ROS_ERROR_STREAM(serialPort << "fails to close abnormally!!");
            ROS_ERROR("Please check whether the serial port is connected to the device normally!!");
            ROS_ERROR(e.what());
            return;
        }
    }
}

void DoBot::SendOrder(uint8_t order)
{
    try
    {
        ser.write(&order, 1);
        ROS_INFO("order has been sent successfully!");
    }
    catch (serial::SerialException &e)
    {
        ROS_ERROR_STREAM("Please check the permission of " << serialPort << "!!");
        ROS_ERROR(e.what());
    }
}





