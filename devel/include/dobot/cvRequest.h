// Generated by gencpp from file dobot/cvRequest.msg
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
struct cvRequest_
{
  typedef cvRequest_<ContainerAllocator> Type;

  cvRequest_()
    : direction(0)  {
    }
  cvRequest_(const ContainerAllocator& _alloc)
    : direction(0)  {
  (void)_alloc;
    }



   typedef int8_t _direction_type;
  _direction_type direction;





  typedef boost::shared_ptr< ::dobot::cvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::cvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct cvRequest_

typedef ::dobot::cvRequest_<std::allocator<void> > cvRequest;

typedef boost::shared_ptr< ::dobot::cvRequest > cvRequestPtr;
typedef boost::shared_ptr< ::dobot::cvRequest const> cvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::cvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::cvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot::cvRequest_<ContainerAllocator1> & lhs, const ::dobot::cvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.direction == rhs.direction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot::cvRequest_<ContainerAllocator1> & lhs, const ::dobot::cvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot::cvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::cvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::cvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::cvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::cvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::cvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::cvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "82056227860a27ca2b5bdb9859d50460";
  }

  static const char* value(const ::dobot::cvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x82056227860a27caULL;
  static const uint64_t static_value2 = 0x2b5bdb9859d50460ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::cvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/cvRequest";
  }

  static const char* value(const ::dobot::cvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::cvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 direction\n"
;
  }

  static const char* value(const ::dobot::cvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::cvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::cvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::cvRequest_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<int8_t>::stream(s, indent + "  ", v.direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_CVREQUEST_H
