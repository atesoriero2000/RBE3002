;; Auto-generated. Do not edit!


(when (boundp 'rbe500::JointControl)
  (if (not (find-package "RBE500"))
    (make-package "RBE500"))
  (shadow 'JointControl (find-package "RBE500")))
(unless (find-package "RBE500::JOINTCONTROL")
  (make-package "RBE500::JOINTCONTROL"))
(unless (find-package "RBE500::JOINTCONTROLREQUEST")
  (make-package "RBE500::JOINTCONTROLREQUEST"))
(unless (find-package "RBE500::JOINTCONTROLRESPONSE")
  (make-package "RBE500::JOINTCONTROLRESPONSE"))

(in-package "ROS")





(defclass rbe500::JointControlRequest
  :super ros::object
  :slots (_joint_name _goal_position _goal_velocity _kp _ki _kd ))

(defmethod rbe500::JointControlRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:goal_position __goal_position) 0.0)
    ((:goal_velocity __goal_velocity) 0.0)
    ((:kp __kp) 0.0)
    ((:ki __ki) 0.0)
    ((:kd __kd) 0.0)
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _goal_position (float __goal_position))
   (setq _goal_velocity (float __goal_velocity))
   (setq _kp (float __kp))
   (setq _ki (float __ki))
   (setq _kd (float __kd))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:goal_position
   (&optional __goal_position)
   (if __goal_position (setq _goal_position __goal_position)) _goal_position)
  (:goal_velocity
   (&optional __goal_velocity)
   (if __goal_velocity (setq _goal_velocity __goal_velocity)) _goal_velocity)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; float64 _goal_position
    8
    ;; float64 _goal_velocity
    8
    ;; float64 _kp
    8
    ;; float64 _ki
    8
    ;; float64 _kd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; float64 _goal_position
       (sys::poke _goal_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _goal_velocity
       (sys::poke _goal_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ki
       (sys::poke _ki (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _goal_position
     (setq _goal_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _goal_velocity
     (setq _goal_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kp
     (setq _kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ki
     (setq _ki (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kd
     (setq _kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rbe500::JointControlResponse
  :super ros::object
  :slots ())

(defmethod rbe500::JointControlResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rbe500::JointControl
  :super ros::object
  :slots ())

(setf (get rbe500::JointControl :md5sum-) "e3d59c5166a351c624cb61d94e16d813")
(setf (get rbe500::JointControl :datatype-) "rbe500/JointControl")
(setf (get rbe500::JointControl :request) rbe500::JointControlRequest)
(setf (get rbe500::JointControl :response) rbe500::JointControlResponse)

(defmethod rbe500::JointControlRequest
  (:response () (instance rbe500::JointControlResponse :init)))

(setf (get rbe500::JointControlRequest :md5sum-) "e3d59c5166a351c624cb61d94e16d813")
(setf (get rbe500::JointControlRequest :datatype-) "rbe500/JointControlRequest")
(setf (get rbe500::JointControlRequest :definition-)
      "string joint_name
float64 goal_position
float64 goal_velocity
float64 kp
float64 ki
float64 kd

---
")

(setf (get rbe500::JointControlResponse :md5sum-) "e3d59c5166a351c624cb61d94e16d813")
(setf (get rbe500::JointControlResponse :datatype-) "rbe500/JointControlResponse")
(setf (get rbe500::JointControlResponse :definition-)
      "string joint_name
float64 goal_position
float64 goal_velocity
float64 kp
float64 ki
float64 kd

---
")



(provide :rbe500/JointControl "e3d59c5166a351c624cb61d94e16d813")


