; Auto-generated. Do not edit!


(cl:in-package planner-msg)


;//! \htmlinclude agent_status.msg.html

(cl:defclass <agent_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (curr_pos
    :reader curr_pos
    :initarg :curr_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass agent_status (<agent_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agent_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agent_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-msg:<agent_status> is deprecated: use planner-msg:agent_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <agent_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:header-val is deprecated.  Use planner-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'curr_pos-val :lambda-list '(m))
(cl:defmethod curr_pos-val ((m <agent_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:curr_pos-val is deprecated.  Use planner-msg:curr_pos instead.")
  (curr_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agent_status>) ostream)
  "Serializes a message object of type '<agent_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'curr_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'curr_pos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agent_status>) istream)
  "Deserializes a message object of type '<agent_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'curr_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'curr_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agent_status>)))
  "Returns string type for a message object of type '<agent_status>"
  "planner/agent_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_status)))
  "Returns string type for a message object of type 'agent_status"
  "planner/agent_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agent_status>)))
  "Returns md5sum for a message object of type '<agent_status>"
  "18a610e395f7e023adac4db0dcbdf859")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agent_status)))
  "Returns md5sum for a message object of type 'agent_status"
  "18a610e395f7e023adac4db0dcbdf859")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agent_status>)))
  "Returns full string definition for message of type '<agent_status>"
  (cl:format cl:nil "Header header~%float64[] curr_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agent_status)))
  "Returns full string definition for message of type 'agent_status"
  (cl:format cl:nil "Header header~%float64[] curr_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agent_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'curr_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agent_status>))
  "Converts a ROS message object to a list"
  (cl:list 'agent_status
    (cl:cons ':header (header msg))
    (cl:cons ':curr_pos (curr_pos msg))
))
