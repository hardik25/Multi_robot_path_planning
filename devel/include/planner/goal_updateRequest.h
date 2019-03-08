// Generated by gencpp from file planner/goal_updateRequest.msg
// DO NOT EDIT!


#ifndef PLANNER_MESSAGE_GOAL_UPDATEREQUEST_H
#define PLANNER_MESSAGE_GOAL_UPDATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace planner
{
template <class ContainerAllocator>
struct goal_updateRequest_
{
  typedef goal_updateRequest_<ContainerAllocator> Type;

  goal_updateRequest_()
    : goal()
    , avail(0)  {
    }
  goal_updateRequest_(const ContainerAllocator& _alloc)
    : goal(_alloc)
    , avail(0)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _goal_type;
  _goal_type goal;

   typedef int32_t _avail_type;
  _avail_type avail;





  typedef boost::shared_ptr< ::planner::goal_updateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planner::goal_updateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct goal_updateRequest_

typedef ::planner::goal_updateRequest_<std::allocator<void> > goal_updateRequest;

typedef boost::shared_ptr< ::planner::goal_updateRequest > goal_updateRequestPtr;
typedef boost::shared_ptr< ::planner::goal_updateRequest const> goal_updateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planner::goal_updateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planner::goal_updateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace planner

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'planner': ['/home/siddharth/multi_robo_plan/src/planner/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::planner::goal_updateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner::goal_updateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner::goal_updateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner::goal_updateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner::goal_updateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner::goal_updateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planner::goal_updateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "735f79c4b63929bdb61bf7d86838d0dc";
  }

  static const char* value(const ::planner::goal_updateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x735f79c4b63929bdULL;
  static const uint64_t static_value2 = 0xb61bf7d86838d0dcULL;
};

template<class ContainerAllocator>
struct DataType< ::planner::goal_updateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planner/goal_updateRequest";
  }

  static const char* value(const ::planner::goal_updateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planner::goal_updateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] goal\n\
int32 avail\n\
";
  }

  static const char* value(const ::planner::goal_updateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planner::goal_updateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
      stream.next(m.avail);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct goal_updateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planner::goal_updateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planner::goal_updateRequest_<ContainerAllocator>& v)
  {
    s << indent << "goal[]" << std::endl;
    for (size_t i = 0; i < v.goal.size(); ++i)
    {
      s << indent << "  goal[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.goal[i]);
    }
    s << indent << "avail: ";
    Printer<int32_t>::stream(s, indent + "  ", v.avail);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNER_MESSAGE_GOAL_UPDATEREQUEST_H