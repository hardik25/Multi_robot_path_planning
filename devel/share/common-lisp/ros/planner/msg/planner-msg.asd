
(cl:in-package :asdf)

(defsystem "planner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "agent_status" :depends-on ("_package_agent_status"))
    (:file "_package_agent_status" :depends-on ("_package"))
  ))