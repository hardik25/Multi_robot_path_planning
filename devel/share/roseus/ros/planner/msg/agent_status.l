;; Auto-generated. Do not edit!


(when (boundp 'planner::agent_status)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'agent_status (find-package "PLANNER")))
(unless (find-package "PLANNER::AGENT_STATUS")
  (make-package "PLANNER::AGENT_STATUS"))

(in-package "ROS")
;;//! \htmlinclude agent_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planner::agent_status
  :super ros::object
  :slots (_header _curr_pos ))

(defmethod planner::agent_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:curr_pos __curr_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _curr_pos __curr_pos)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:curr_pos
   (&optional __curr_pos)
   (if __curr_pos (setq _curr_pos __curr_pos)) _curr_pos)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _curr_pos
    (* 8    (length _curr_pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _curr_pos
     (write-long (length _curr_pos) s)
     (dotimes (i (length _curr_pos))
       (sys::poke (elt _curr_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _curr_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curr_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _curr_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get planner::agent_status :md5sum-) "18a610e395f7e023adac4db0dcbdf859")
(setf (get planner::agent_status :datatype-) "planner/agent_status")
(setf (get planner::agent_status :definition-)
      "Header header
float64[] curr_pos

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :planner/agent_status "18a610e395f7e023adac4db0dcbdf859")


