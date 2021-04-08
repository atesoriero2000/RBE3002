
(cl:in-package :asdf)

(defsystem "rbe500-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointControl" :depends-on ("_package_JointControl"))
    (:file "_package_JointControl" :depends-on ("_package"))
    (:file "get_joint_velocities" :depends-on ("_package_get_joint_velocities"))
    (:file "_package_get_joint_velocities" :depends-on ("_package"))
    (:file "get_tool_velocity" :depends-on ("_package_get_tool_velocity"))
    (:file "_package_get_tool_velocity" :depends-on ("_package"))
    (:file "pose_input" :depends-on ("_package_pose_input"))
    (:file "_package_pose_input" :depends-on ("_package"))
  ))