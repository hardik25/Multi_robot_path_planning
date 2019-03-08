;; Auto-generated. Do not edit!


(when (boundp 'planner::goal_update)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'goal_update (find-package "PLANNER")))
(unless (find-package "PLANNER::GOAL_UPDATE")
  (make-package "PLANNER::GOAL_UPDATE"))
(unless (find-package "PLANNER::GOAL_UPDATEREQUEST")
  (make-package "PLANNER::GOAL_UPDATEREQUEST"))
(unless (find-package "PLANNER::GOAL_UPDATERESPONSE")
  (make-package "PLANNER::GOAL_UPDATERESPONSE"))

(in-package "ROS")





(defclass planner::goal_updateRequest
  :super ros::object
  :slots (_goal _avail ))

(defmethod planner::goal_updateRequest
  (:init
   (&key
    ((:goal __goal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:avail __avail) 0)
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _avail (round __avail))
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:avail
   (&optional __avail)
   (if __avail (setq _avail __avail)) _avail)
  (:serialization-length
   ()
   (+
    ;; float64[] _goal
    (* 8    (length _goal)) 4
    ;; int32 _avail
    4
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
     ;; int32 _avail
       (write-long _avail s)
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
   ;; int32 _avail
     (setq _avail (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass planner::goal_updateResponse
  :super ros::object
  :slots (_run ))

(defmethod planner::goal_updateResponse
  (:init
   (&key
    ((:run __run) "")
    )
   (send-super :init)
   (setq _run (string __run))
   self)
  (:run
   (&optional __run)
   (if __run (setq _run __run)) _run)
  (:serialization-length
   ()
   (+
    ;; string _run
    4 (length _run)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _run
       (write-long (length _run) s) (princ _run s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _run
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _run (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass planner::goal_update
  :super ros::object
  :slots ())

(setf (get planner::goal_update :md5sum-) "436099e14cbdae6055989aead131b550")
(setf (get planner::goal_update :datatype-) "planner/goal_update")
(setf (get planner::goal_update :request) planner::goal_updateRequest)
(setf (get planner::goal_update :response) planner::goal_updateResponse)

(defmethod planner::goal_updateRequest
  (:response () (instance planner::goal_updateResponse :init)))

(setf (get planner::goal_updateRequest :md5sum-) "436099e14cbdae6055989aead131b550")
(setf (get planner::goal_updateRequest :datatype-) "planner/goal_updateRequest")
(setf (get planner::goal_updateRequest :definition-)
      "float64[] goal
int32 avail
---
string run

")

(setf (get planner::goal_updateResponse :md5sum-) "436099e14cbdae6055989aead131b550")
(setf (get planner::goal_updateResponse :datatype-) "planner/goal_updateResponse")
(setf (get planner::goal_updateResponse :definition-)
      "float64[] goal
int32 avail
---
string run

")



(provide :planner/goal_update "436099e14cbdae6055989aead131b550")


