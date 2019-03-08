; Auto-generated. Do not edit!


(cl:in-package planner-srv)


;//! \htmlinclude goal_update-request.msg.html

(cl:defclass <goal_update-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (avail
    :reader avail
    :initarg :avail
    :type cl:integer
    :initform 0))
)

(cl:defclass goal_update-request (<goal_update-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goal_update-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goal_update-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-srv:<goal_update-request> is deprecated: use planner-srv:goal_update-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <goal_update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:goal-val is deprecated.  Use planner-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'avail-val :lambda-list '(m))
(cl:defmethod avail-val ((m <goal_update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:avail-val is deprecated.  Use planner-srv:avail instead.")
  (avail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goal_update-request>) ostream)
  "Serializes a message object of type '<goal_update-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal))))
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
   (cl:slot-value msg 'goal))
  (cl:let* ((signed (cl:slot-value msg 'avail)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goal_update-request>) istream)
  "Deserializes a message object of type '<goal_update-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'avail) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goal_update-request>)))
  "Returns string type for a service object of type '<goal_update-request>"
  "planner/goal_updateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goal_update-request)))
  "Returns string type for a service object of type 'goal_update-request"
  "planner/goal_updateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goal_update-request>)))
  "Returns md5sum for a message object of type '<goal_update-request>"
  "436099e14cbdae6055989aead131b550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goal_update-request)))
  "Returns md5sum for a message object of type 'goal_update-request"
  "436099e14cbdae6055989aead131b550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goal_update-request>)))
  "Returns full string definition for message of type '<goal_update-request>"
  (cl:format cl:nil "float64[] goal~%int32 avail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goal_update-request)))
  "Returns full string definition for message of type 'goal_update-request"
  (cl:format cl:nil "float64[] goal~%int32 avail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goal_update-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goal_update-request>))
  "Converts a ROS message object to a list"
  (cl:list 'goal_update-request
    (cl:cons ':goal (goal msg))
    (cl:cons ':avail (avail msg))
))
;//! \htmlinclude goal_update-response.msg.html

(cl:defclass <goal_update-response> (roslisp-msg-protocol:ros-message)
  ((run
    :reader run
    :initarg :run
    :type cl:string
    :initform ""))
)

(cl:defclass goal_update-response (<goal_update-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goal_update-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goal_update-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-srv:<goal_update-response> is deprecated: use planner-srv:goal_update-response instead.")))

(cl:ensure-generic-function 'run-val :lambda-list '(m))
(cl:defmethod run-val ((m <goal_update-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:run-val is deprecated.  Use planner-srv:run instead.")
  (run m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goal_update-response>) ostream)
  "Serializes a message object of type '<goal_update-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'run))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'run))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goal_update-response>) istream)
  "Deserializes a message object of type '<goal_update-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'run) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'run) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goal_update-response>)))
  "Returns string type for a service object of type '<goal_update-response>"
  "planner/goal_updateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goal_update-response)))
  "Returns string type for a service object of type 'goal_update-response"
  "planner/goal_updateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goal_update-response>)))
  "Returns md5sum for a message object of type '<goal_update-response>"
  "436099e14cbdae6055989aead131b550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goal_update-response)))
  "Returns md5sum for a message object of type 'goal_update-response"
  "436099e14cbdae6055989aead131b550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goal_update-response>)))
  "Returns full string definition for message of type '<goal_update-response>"
  (cl:format cl:nil "string run~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goal_update-response)))
  "Returns full string definition for message of type 'goal_update-response"
  (cl:format cl:nil "string run~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goal_update-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'run))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goal_update-response>))
  "Converts a ROS message object to a list"
  (cl:list 'goal_update-response
    (cl:cons ':run (run msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'goal_update)))
  'goal_update-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'goal_update)))
  'goal_update-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goal_update)))
  "Returns string type for a service object of type '<goal_update>"
  "planner/goal_update")