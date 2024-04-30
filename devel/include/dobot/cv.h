// Generated by gencpp from file dobot/cv.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_CV_H
#define DOBOT_MESSAGE_CV_H

#include <ros/service_traits.h>


#include <dobot/cvRequest.h>
#include <dobot/cvResponse.h>


namespace dobot
{

struct cv
{

typedef cvRequest Request;
typedef cvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct cv
} // namespace dobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dobot::cv > {
  static const char* value()
  {
    return "82056227860a27ca2b5bdb9859d50460";
  }

  static const char* value(const ::dobot::cv&) { return value(); }
};

template<>
struct DataType< ::dobot::cv > {
  static const char* value()
  {
    return "dobot/cv";
  }

  static const char* value(const ::dobot::cv&) { return value(); }
};


// service_traits::MD5Sum< ::dobot::cvRequest> should match
// service_traits::MD5Sum< ::dobot::cv >
template<>
struct MD5Sum< ::dobot::cvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::cv >::value();
  }
  static const char* value(const ::dobot::cvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::cvRequest> should match
// service_traits::DataType< ::dobot::cv >
template<>
struct DataType< ::dobot::cvRequest>
{
  static const char* value()
  {
    return DataType< ::dobot::cv >::value();
  }
  static const char* value(const ::dobot::cvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dobot::cvResponse> should match
// service_traits::MD5Sum< ::dobot::cv >
template<>
struct MD5Sum< ::dobot::cvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::cv >::value();
  }
  static const char* value(const ::dobot::cvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::cvResponse> should match
// service_traits::DataType< ::dobot::cv >
template<>
struct DataType< ::dobot::cvResponse>
{
  static const char* value()
  {
    return DataType< ::dobot::cv >::value();
  }
  static const char* value(const ::dobot::cvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DOBOT_MESSAGE_CV_H
