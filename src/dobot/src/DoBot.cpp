#include"/home/human/dobot/src/dobot/include/dobot/DoBot.h"
#include<thread>

void DoBot::Process()
{
    this->Sit();
    while (1)
    {
        if(currentState == STOP){
            this->Forward();
        }
    }
}
void DoBot::Stop()
{
    // send order;
    if(this->currentState == STOP)
        return;
    this->OpenSer();
    uint8_t messege = stop;
    SendOrder(messege);
    currentState = STOP;
    ROS_INFO("current state is STOP");
    std::cout << this->GetMessage().data;
    // CloseSer();
}

void DoBot::Stand()
{
    // send order;
    if(this->currentState == STAND)
        return;
    this->OpenSer();
    uint8_t messege = stand;
    SendOrder(messege);
    currentState = STAND;
    ROS_INFO("current state is STAND");
    std::cout << this->GetMessage().data;
    // CloseSer();
}

void DoBot::Sit()
{
    // send order;
    if(this->currentState == SIT)
        return;
    this->OpenSer();
    uint8_t messege = sit;
    SendOrder(messege);
    currentState = SIT;
    ROS_INFO("current state is SIT");
    std::cout << this->GetMessage().data;
    // CloseSer();
}

void DoBot::Forward()
{
    // send order;
    if(this->currentState == FORWARD)
        return;
    this->OpenSer();
    uint8_t messege = forward;
    SendOrder(messege);
    currentState = FORWARD;
    ROS_INFO("current state is FORWARD");
    std::cout << this->GetMessage().data;
    // CloseSer();
}

void DoBot::Back()
{
    // send order;
    if(this->currentState == BACKWARD)
        return;
    this->OpenSer();
    uint8_t messege = back;
    SendOrder(messege);
    currentState = BACKWARD;
    ROS_INFO("current state is BACKWARD");
    std::cout << this->GetMessage().data;
    // CloseSer();
}

void DoBot::Left()
{
    // send order;
    if(this->currentState == LEFT)
        return;
    this->OpenSer();
    uint8_t messege = left;
    SendOrder(messege);
    currentState = LEFT;
    ROS_INFO("current state is LEFT");
    std::cout << this->GetMessage().data;
    // CloseSer();
}

void DoBot::Right()
{
    // send order;
    if(this->currentState == RIGHT)
        return;
    this->OpenSer();
    uint8_t messege = right;
    SendOrder(messege);
    currentState = RIGHT;
    ROS_INFO("current state is RIGHT");
    std::cout << this->GetMessage().data;
    // CloseSer();
}

std_msgs::String DoBot::GetMessage()
{
    ROS_INFO("GetMessage");
    size_t n = this->ser.available();
    if (n != 0)
    {
        ROS_INFO_STREAM("Reading from serial port:\n"); // 表明正在开始读取串口数据
        this->messagebyser.data = this->ser.read(this->ser.available());
    }
    ROS_INFO("message is %s", this->messagebyser.data.c_str());
    return this->messagebyser;
}

bool DoBot::doCorrectPos(dobot::CV::Request& req, dobot::CV::Response& resp)
{
    int8_t direct = req.direction;
    // ROS_INFO("need correct pos");
    switch (direct)
    {
    case 0:
        this->Left();
        break;
    case 1:
        this->Right();
        break;
    case 2:
        this->Stop();
        break;
    default:
        ROS_ERROR("Invalid direction");
        return false;
    }
    return true;
}

DoBot* DoBot::instance = nullptr;
std::mutex DoBot::mutex;

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"DoBot");
    DoBot *dobot = DoBot::getInstance();
    std::thread t(&DoBot::Process, dobot);
    ros::ServiceServer server = dobot->DOBOT.advertiseService<DoBot, dobot::CV::Request, dobot::CV::Response>("bridge_yolo", &DoBot::doCorrectPos, dobot);
    ROS_INFO("ok....");
    ros::spin();
    /* code */
    return 0;
}
