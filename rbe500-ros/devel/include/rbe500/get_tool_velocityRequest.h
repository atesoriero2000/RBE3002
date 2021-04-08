// Generated by gencpp from file rbe500/get_tool_velocityRequest.msg
// DO NOT EDIT!


#ifndef RBE500_MESSAGE_GET_TOOL_VELOCITYREQUEST_H
#define RBE500_MESSAGE_GET_TOOL_VELOCITYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rbe500
{
template <class ContainerAllocator>
struct get_tool_velocityRequest_
{
  typedef get_tool_velocityRequest_<ContainerAllocator> Type;

  get_tool_velocityRequest_()
    : theta_1_dot(0.0)
    , theta_2_dot(0.0)
    , d3_dot(0.0)
    , j1(0.0)
    , d3(0.0)  {
    }
  get_tool_velocityRequest_(const ContainerAllocator& _alloc)
    : theta_1_dot(0.0)
    , theta_2_dot(0.0)
    , d3_dot(0.0)
    , j1(0.0)
    , d3(0.0)  {
  (void)_alloc;
    }



   typedef double _theta_1_dot_type;
  _theta_1_dot_type theta_1_dot;

   typedef double _theta_2_dot_type;
  _theta_2_dot_type theta_2_dot;

   typedef double _d3_dot_type;
  _d3_dot_type d3_dot;

   typedef double _j1_type;
  _j1_type j1;

   typedef double _d3_type;
  _d3_type d3;





  typedef boost::shared_ptr< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> const> ConstPtr;

}; // struct get_tool_velocityRequest_

typedef ::rbe500::get_tool_velocityRequest_<std::allocator<void> > get_tool_velocityRequest;

typedef boost::shared_ptr< ::rbe500::get_tool_velocityRequest > get_tool_velocityRequestPtr;
typedef boost::shared_ptr< ::rbe500::get_tool_velocityRequest const> get_tool_velocityRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rbe500::get_tool_velocityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rbe500::get_tool_velocityRequest_<ContainerAllocator1> & lhs, const ::rbe500::get_tool_velocityRequest_<ContainerAllocator2> & rhs)
{
  return lhs.theta_1_dot == rhs.theta_1_dot &&
    lhs.theta_2_dot == rhs.theta_2_dot &&
    lhs.d3_dot == rhs.d3_dot &&
    lhs.j1 == rhs.j1 &&
    lhs.d3 == rhs.d3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rbe500::get_tool_velocityRequest_<ContainerAllocator1> & lhs, const ::rbe500::get_tool_velocityRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rbe500

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d3c53364512f1be467dd9b6954183c1d";
  }

  static const char* value(const ::rbe500::get_tool_velocityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd3c53364512f1be4ULL;
  static const uint64_t static_value2 = 0x67dd9b6954183c1dULL;
};

template<class ContainerAllocator>
struct DataType< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rbe500/get_tool_velocityRequest";
  }

  static const char* value(const ::rbe500::get_tool_velocityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 theta_1_dot\n"
"float64 theta_2_dot\n"
"float64 d3_dot\n"
"float64 j1\n"
"float64 d3\n"
;
  }

  static const char* value(const ::rbe500::get_tool_velocityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.theta_1_dot);
      stream.next(m.theta_2_dot);
      stream.next(m.d3_dot);
      stream.next(m.j1);
      stream.next(m.d3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_tool_velocityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rbe500::get_tool_velocityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rbe500::get_tool_velocityRequest_<ContainerAllocator>& v)
  {
    s << indent << "theta_1_dot: ";
    Printer<double>::stream(s, indent + "  ", v.theta_1_dot);
    s << indent << "theta_2_dot: ";
    Printer<double>::stream(s, indent + "  ", v.theta_2_dot);
    s << indent << "d3_dot: ";
    Printer<double>::stream(s, indent + "  ", v.d3_dot);
    s << indent << "j1: ";
    Printer<double>::stream(s, indent + "  ", v.j1);
    s << indent << "d3: ";
    Printer<double>::stream(s, indent + "  ", v.d3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RBE500_MESSAGE_GET_TOOL_VELOCITYREQUEST_H
