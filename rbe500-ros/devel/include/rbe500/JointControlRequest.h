// Generated by gencpp from file rbe500/JointControlRequest.msg
// DO NOT EDIT!


#ifndef RBE500_MESSAGE_JOINTCONTROLREQUEST_H
#define RBE500_MESSAGE_JOINTCONTROLREQUEST_H


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
struct JointControlRequest_
{
  typedef JointControlRequest_<ContainerAllocator> Type;

  JointControlRequest_()
    : joint_name()
    , goal_position(0.0)
    , goal_velocity(0.0)
    , kp(0.0)
    , ki(0.0)
    , kd(0.0)  {
    }
  JointControlRequest_(const ContainerAllocator& _alloc)
    : joint_name(_alloc)
    , goal_position(0.0)
    , goal_velocity(0.0)
    , kp(0.0)
    , ki(0.0)
    , kd(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _joint_name_type;
  _joint_name_type joint_name;

   typedef double _goal_position_type;
  _goal_position_type goal_position;

   typedef double _goal_velocity_type;
  _goal_velocity_type goal_velocity;

   typedef double _kp_type;
  _kp_type kp;

   typedef double _ki_type;
  _ki_type ki;

   typedef double _kd_type;
  _kd_type kd;





  typedef boost::shared_ptr< ::rbe500::JointControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rbe500::JointControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct JointControlRequest_

typedef ::rbe500::JointControlRequest_<std::allocator<void> > JointControlRequest;

typedef boost::shared_ptr< ::rbe500::JointControlRequest > JointControlRequestPtr;
typedef boost::shared_ptr< ::rbe500::JointControlRequest const> JointControlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rbe500::JointControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rbe500::JointControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rbe500::JointControlRequest_<ContainerAllocator1> & lhs, const ::rbe500::JointControlRequest_<ContainerAllocator2> & rhs)
{
  return lhs.joint_name == rhs.joint_name &&
    lhs.goal_position == rhs.goal_position &&
    lhs.goal_velocity == rhs.goal_velocity &&
    lhs.kp == rhs.kp &&
    lhs.ki == rhs.ki &&
    lhs.kd == rhs.kd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rbe500::JointControlRequest_<ContainerAllocator1> & lhs, const ::rbe500::JointControlRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rbe500

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rbe500::JointControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rbe500::JointControlRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rbe500::JointControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rbe500::JointControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rbe500::JointControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rbe500::JointControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rbe500::JointControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e3d59c5166a351c624cb61d94e16d813";
  }

  static const char* value(const ::rbe500::JointControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe3d59c5166a351c6ULL;
  static const uint64_t static_value2 = 0x24cb61d94e16d813ULL;
};

template<class ContainerAllocator>
struct DataType< ::rbe500::JointControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rbe500/JointControlRequest";
  }

  static const char* value(const ::rbe500::JointControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rbe500::JointControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string joint_name\n"
"float64 goal_position\n"
"float64 goal_velocity\n"
"float64 kp\n"
"float64 ki\n"
"float64 kd\n"
"\n"
;
  }

  static const char* value(const ::rbe500::JointControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rbe500::JointControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_name);
      stream.next(m.goal_position);
      stream.next(m.goal_velocity);
      stream.next(m.kp);
      stream.next(m.ki);
      stream.next(m.kd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rbe500::JointControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rbe500::JointControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "joint_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_name);
    s << indent << "goal_position: ";
    Printer<double>::stream(s, indent + "  ", v.goal_position);
    s << indent << "goal_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.goal_velocity);
    s << indent << "kp: ";
    Printer<double>::stream(s, indent + "  ", v.kp);
    s << indent << "ki: ";
    Printer<double>::stream(s, indent + "  ", v.ki);
    s << indent << "kd: ";
    Printer<double>::stream(s, indent + "  ", v.kd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RBE500_MESSAGE_JOINTCONTROLREQUEST_H
