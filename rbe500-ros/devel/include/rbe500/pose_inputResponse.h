// Generated by gencpp from file rbe500/pose_inputResponse.msg
// DO NOT EDIT!


#ifndef RBE500_MESSAGE_POSE_INPUTRESPONSE_H
#define RBE500_MESSAGE_POSE_INPUTRESPONSE_H


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
struct pose_inputResponse_
{
  typedef pose_inputResponse_<ContainerAllocator> Type;

  pose_inputResponse_()
    : q1(0.0)
    , q2(0.0)
    , d3(0.0)  {
    }
  pose_inputResponse_(const ContainerAllocator& _alloc)
    : q1(0.0)
    , q2(0.0)
    , d3(0.0)  {
  (void)_alloc;
    }



   typedef double _q1_type;
  _q1_type q1;

   typedef double _q2_type;
  _q2_type q2;

   typedef double _d3_type;
  _d3_type d3;





  typedef boost::shared_ptr< ::rbe500::pose_inputResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rbe500::pose_inputResponse_<ContainerAllocator> const> ConstPtr;

}; // struct pose_inputResponse_

typedef ::rbe500::pose_inputResponse_<std::allocator<void> > pose_inputResponse;

typedef boost::shared_ptr< ::rbe500::pose_inputResponse > pose_inputResponsePtr;
typedef boost::shared_ptr< ::rbe500::pose_inputResponse const> pose_inputResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rbe500::pose_inputResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rbe500::pose_inputResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rbe500::pose_inputResponse_<ContainerAllocator1> & lhs, const ::rbe500::pose_inputResponse_<ContainerAllocator2> & rhs)
{
  return lhs.q1 == rhs.q1 &&
    lhs.q2 == rhs.q2 &&
    lhs.d3 == rhs.d3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rbe500::pose_inputResponse_<ContainerAllocator1> & lhs, const ::rbe500::pose_inputResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rbe500

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rbe500::pose_inputResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rbe500::pose_inputResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rbe500::pose_inputResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rbe500::pose_inputResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rbe500::pose_inputResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rbe500::pose_inputResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rbe500::pose_inputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f439218c3a6a6da84daea3b1bccc8aa6";
  }

  static const char* value(const ::rbe500::pose_inputResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf439218c3a6a6da8ULL;
  static const uint64_t static_value2 = 0x4daea3b1bccc8aa6ULL;
};

template<class ContainerAllocator>
struct DataType< ::rbe500::pose_inputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rbe500/pose_inputResponse";
  }

  static const char* value(const ::rbe500::pose_inputResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rbe500::pose_inputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 q1\n"
"float64 q2\n"
"float64 d3\n"
"\n"
;
  }

  static const char* value(const ::rbe500::pose_inputResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rbe500::pose_inputResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q1);
      stream.next(m.q2);
      stream.next(m.d3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pose_inputResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rbe500::pose_inputResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rbe500::pose_inputResponse_<ContainerAllocator>& v)
  {
    s << indent << "q1: ";
    Printer<double>::stream(s, indent + "  ", v.q1);
    s << indent << "q2: ";
    Printer<double>::stream(s, indent + "  ", v.q2);
    s << indent << "d3: ";
    Printer<double>::stream(s, indent + "  ", v.d3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RBE500_MESSAGE_POSE_INPUTRESPONSE_H
