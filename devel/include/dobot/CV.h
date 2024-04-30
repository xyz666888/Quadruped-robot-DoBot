// Generated by gencpp from file dobot/CV.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_CV_H
#define DOBOT_MESSAGE_CV_H

#include <ros/service_traits.h>


#include <dobot/CVRequest.h>
#include <dobot/CVResponse.h>


namespace dobot
{

struct CV
{

typedef CVRequest Request;
typedef CVResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CV
} // namespace dobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dobot::CV > {
  static const char* value()
  {
    return "82056227860a27ca2b5bdb9859d50460";
  }

  static const char* value(const ::dobot::CV&) { return value(); }
};

template<>
struct DataType< ::dobot::CV > {
  static const char* value()
  {
    return "dobot/CV";
  }

  static const char* value(const ::dobot::CV&) { return value(); }
};


// service_traits::MD5Sum< ::dobot::CVRequest> should match
// service_traits::MD5Sum< ::dobot::CV >
template<>
struct MD5Sum< ::dobot::CVRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::CV >::value();
  }
  static const char* value(const ::dobot::CVRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::CVRequest> should match
// service_traits::DataType< ::dobot::CV >
template<>
struct DataType< ::dobot::CVRequest>
{
  static const char* value()
  {
    return DataType< ::dobot::CV >::value();
  }
  static const char* value(const ::dobot::CVRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dobot::CVResponse> should match
// service_traits::MD5Sum< ::dobot::CV >
template<>
struct MD5Sum< ::dobot::CVResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::CV >::value();
  }
  static const char* value(const ::dobot::CVResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::CVResponse> should match
// service_traits::DataType< ::dobot::CV >
template<>
struct DataType< ::dobot::CVResponse>
{
  static const char* value()
  {
    return DataType< ::dobot::CV >::value();
  }
  static const char* value(const ::dobot::CVResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DOBOT_MESSAGE_CV_H