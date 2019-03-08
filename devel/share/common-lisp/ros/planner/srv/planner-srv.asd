
(cl:in-package :asdf)

(defsystem "planner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "goal_update" :depends-on ("_package_goal_update"))
    (:file "_package_goal_update" :depends-on ("_package"))
    (:file "plan" :depends-on ("_package_plan"))
    (:file "_package_plan" :depends-on ("_package"))
  ))