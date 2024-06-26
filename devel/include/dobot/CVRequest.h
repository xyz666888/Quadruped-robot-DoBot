// Generated by gencpp from file dobot/CVRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_CVREQUEST_H
#define DOBOT_MESSAGE_CVREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dobot
{
template <class ContainerAllocator>
struct CVRequest_
{
  typedef CVRequest_<ContainerAllocator> Type;

  CVRequest_()
    : direction(0)  {
    }
  CVRequest_(const ContainerAllocator& _alloc)
    : direction(0)  {
  (void)_alloc;
    }



   typedef int8_t _direction_type;
  _direction_type direction;





  typedef boost::shared_ptr< ::dobot::CVRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::CVRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CVRequest_

typedef ::dobot::CVRequest_<std::allocator<void> > CVRequest;

typedef boost::shared_ptr< ::dobot::CVRequest > CVRequestPtr;
typedef boost::shared_ptr< ::dobot::CVRequest const> CVRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::CVRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::CVRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot::CVRequest_<ContainerAllocator1> & lhs, const ::dobot::CVRequest_<ContainerAllocator2> & rhs)
{
  return lhs.direction == rhs.direction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot::CVRequest_<ContainerAllocator1> & lhs, const ::dobot::CVRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot::CVRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::CVRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::CVRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::CVRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::CVRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::CVRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::CVRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "82056227860a27ca2b5bdb9859d50460";
  }

  static const char* value(const ::dobot::CVRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x82056227860a27caULL;
  static const uint64_t static_value2 = 0x2b5bdb9859d50460ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::CVRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/CVRequest";
  }

  static const char* value(const ::dobot::CVRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::CVRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 direction\n"
;
  }

  static const char* value(const ::dobot::CVRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::CVRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CVRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::CVRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::CVRequest_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<int8_t>::stream(s, indent + "  ", v.direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_CVREQUEST_H
