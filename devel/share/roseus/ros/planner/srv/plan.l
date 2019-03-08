;; Auto-generated. Do not edit!


(when (boundp 'planner::plan)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'plan (find-package "PLANNER")))
(unless (find-package "PLANNER::PLAN")
  (make-package "PLANNER::PLAN"))
(unless (find-package "PLANNER::PLANREQUEST")
  (make-package "PLANNER::PLANREQUEST"))
(unless (find-package "PLANNER::PLANRESPONSE")
  (make-package "PLANNER::PLANRESPONSE"))

(in-package "ROS")





(defclass planner::planRequest
  :super ros::object
  :slots (_goal _start _id ))

(defmethod planner::planRequest
  (:init
   (&key
    ((:goal __goal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:start __start) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:id __id) "")
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _start __start)
   (setq _id (string __id))
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float64[] _goal
    (* 8    (length _goal)) 4
    ;; float64[] _start
    (* 8    (length _start)) 4
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _goal
     (write-long (length _goal) s)
     (dotimes (i (length _goal))
       (sys::poke (elt _goal i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _start
     (write-long (length _start) s)
     (dotimes (i (length _start))
       (sys::poke (elt _start i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _start
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planner::planResponse
  :super ros::object
  :slots (_plan_x _plan_y ))

(defmethod planner::planResponse
  (:init
   (&key
    ((:plan_x __plan_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:plan_y __plan_y) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _plan_x __plan_x)
   (setq _plan_y __plan_y)
   self)
  (:plan_x
   (&optional __plan_x)
   (if __plan_x (setq _plan_x __plan_x)) _plan_x)
  (:plan_y
   (&optional __plan_y)
   (if __plan_y (setq _plan_y __plan_y)) _plan_y)
  (:serialization-length
   ()
   (+
    ;; float64[] _plan_x
    (* 8    (length _plan_x)) 4
    ;; float64[] _plan_y
    (* 8    (length _plan_y)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _plan_x
     (write-long (length _plan_x) s)
     (dotimes (i (length _plan_x))
       (sys::poke (elt _plan_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _plan_y
     (write-long (length _plan_y) s)
     (dotimes (i (length _plan_y))
       (sys::poke (elt _plan_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _plan_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _plan_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _plan_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _plan_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass planner::plan
  :super ros::object
  :slots ())

(setf (get planner::plan :md5sum-) "27f79911e87bcca9dad2a28a074d44b4")
(setf (get planner::plan :datatype-) "planner/plan")
(setf (get planner::plan :request) planner::planRequest)
(setf (get planner::plan :response) planner::planResponse)

(defmethod planner::planRequest
  (:response () (instance planner::planResponse :init)))

(setf (get planner::planRequest :md5sum-) "27f79911e87bcca9dad2a28a074d44b4")
(setf (get planner::planRequest :datatype-) "planner/planRequest")
(setf (get planner::planRequest :definition-)
      "float64[] goal
float64[] start
string id
---
float64[] plan_x
float64[] plan_y

")

(setf (get planner::planResponse :md5sum-) "27f79911e87bcca9dad2a28a074d44b4")
(setf (get planner::planResponse :datatype-) "planner/planResponse")
(setf (get planner::planResponse :definition-)
      "float64[] goal
float64[] start
string id
---
float64[] plan_x
float64[] plan_y

")



(provide :planner/plan "27f79911e87bcca9dad2a28a074d44b4")


