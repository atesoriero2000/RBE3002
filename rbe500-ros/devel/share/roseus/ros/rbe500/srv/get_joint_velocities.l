;; Auto-generated. Do not edit!


(when (boundp 'rbe500::get_joint_velocities)
  (if (not (find-package "RBE500"))
    (make-package "RBE500"))
  (shadow 'get_joint_velocities (find-package "RBE500")))
(unless (find-package "RBE500::GET_JOINT_VELOCITIES")
  (make-package "RBE500::GET_JOINT_VELOCITIES"))
(unless (find-package "RBE500::GET_JOINT_VELOCITIESREQUEST")
  (make-package "RBE500::GET_JOINT_VELOCITIESREQUEST"))
(unless (find-package "RBE500::GET_JOINT_VELOCITIESRESPONSE")
  (make-package "RBE500::GET_JOINT_VELOCITIESRESPONSE"))

(in-package "ROS")





(defclass rbe500::get_joint_velocitiesRequest
  :super ros::object
  :slots (_vx _vy _vz _j1 _d3 ))

(defmethod rbe500::get_joint_velocitiesRequest
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:j1 __j1) 0.0)
    ((:d3 __d3) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _j1 (float __j1))
   (setq _d3 (float __d3))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:j1
   (&optional __j1)
   (if __j1 (setq _j1 __j1)) _j1)
  (:d3
   (&optional __d3)
   (if __d3 (setq _d3 __d3)) _d3)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ;; float64 _j1
    8
    ;; float64 _d3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j1
       (sys::poke _j1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3
       (sys::poke _d3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j1
     (setq _j1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d3
     (setq _d3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rbe500::get_joint_velocitiesResponse
  :super ros::object
  :slots (_theta_1_dot _theta_2_dot _d3_dot ))

(defmethod rbe500::get_joint_velocitiesResponse
  (:init
   (&key
    ((:theta_1_dot __theta_1_dot) 0.0)
    ((:theta_2_dot __theta_2_dot) 0.0)
    ((:d3_dot __d3_dot) 0.0)
    )
   (send-super :init)
   (setq _theta_1_dot (float __theta_1_dot))
   (setq _theta_2_dot (float __theta_2_dot))
   (setq _d3_dot (float __d3_dot))
   self)
  (:theta_1_dot
   (&optional __theta_1_dot)
   (if __theta_1_dot (setq _theta_1_dot __theta_1_dot)) _theta_1_dot)
  (:theta_2_dot
   (&optional __theta_2_dot)
   (if __theta_2_dot (setq _theta_2_dot __theta_2_dot)) _theta_2_dot)
  (:d3_dot
   (&optional __d3_dot)
   (if __d3_dot (setq _d3_dot __d3_dot)) _d3_dot)
  (:serialization-length
   ()
   (+
    ;; float64 _theta_1_dot
    8
    ;; float64 _theta_2_dot
    8
    ;; float64 _d3_dot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _theta_1_dot
       (sys::poke _theta_1_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_2_dot
       (sys::poke _theta_2_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3_dot
       (sys::poke _d3_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _theta_1_dot
     (setq _theta_1_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_2_dot
     (setq _theta_2_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d3_dot
     (setq _d3_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rbe500::get_joint_velocities
  :super ros::object
  :slots ())

(setf (get rbe500::get_joint_velocities :md5sum-) "4095fce8d49a55d344a8363f4d43907a")
(setf (get rbe500::get_joint_velocities :datatype-) "rbe500/get_joint_velocities")
(setf (get rbe500::get_joint_velocities :request) rbe500::get_joint_velocitiesRequest)
(setf (get rbe500::get_joint_velocities :response) rbe500::get_joint_velocitiesResponse)

(defmethod rbe500::get_joint_velocitiesRequest
  (:response () (instance rbe500::get_joint_velocitiesResponse :init)))

(setf (get rbe500::get_joint_velocitiesRequest :md5sum-) "4095fce8d49a55d344a8363f4d43907a")
(setf (get rbe500::get_joint_velocitiesRequest :datatype-) "rbe500/get_joint_velocitiesRequest")
(setf (get rbe500::get_joint_velocitiesRequest :definition-)
      "float64 vx
float64 vy
float64 vz
float64 j1
float64 d3
---
float64 theta_1_dot
float64 theta_2_dot
float64 d3_dot

")

(setf (get rbe500::get_joint_velocitiesResponse :md5sum-) "4095fce8d49a55d344a8363f4d43907a")
(setf (get rbe500::get_joint_velocitiesResponse :datatype-) "rbe500/get_joint_velocitiesResponse")
(setf (get rbe500::get_joint_velocitiesResponse :definition-)
      "float64 vx
float64 vy
float64 vz
float64 j1
float64 d3
---
float64 theta_1_dot
float64 theta_2_dot
float64 d3_dot

")



(provide :rbe500/get_joint_velocities "4095fce8d49a55d344a8363f4d43907a")


