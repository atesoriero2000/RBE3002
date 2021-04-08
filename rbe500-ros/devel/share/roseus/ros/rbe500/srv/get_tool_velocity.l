;; Auto-generated. Do not edit!


(when (boundp 'rbe500::get_tool_velocity)
  (if (not (find-package "RBE500"))
    (make-package "RBE500"))
  (shadow 'get_tool_velocity (find-package "RBE500")))
(unless (find-package "RBE500::GET_TOOL_VELOCITY")
  (make-package "RBE500::GET_TOOL_VELOCITY"))
(unless (find-package "RBE500::GET_TOOL_VELOCITYREQUEST")
  (make-package "RBE500::GET_TOOL_VELOCITYREQUEST"))
(unless (find-package "RBE500::GET_TOOL_VELOCITYRESPONSE")
  (make-package "RBE500::GET_TOOL_VELOCITYRESPONSE"))

(in-package "ROS")





(defclass rbe500::get_tool_velocityRequest
  :super ros::object
  :slots (_theta_1_dot _theta_2_dot _d3_dot _j1 _d3 ))

(defmethod rbe500::get_tool_velocityRequest
  (:init
   (&key
    ((:theta_1_dot __theta_1_dot) 0.0)
    ((:theta_2_dot __theta_2_dot) 0.0)
    ((:d3_dot __d3_dot) 0.0)
    ((:j1 __j1) 0.0)
    ((:d3 __d3) 0.0)
    )
   (send-super :init)
   (setq _theta_1_dot (float __theta_1_dot))
   (setq _theta_2_dot (float __theta_2_dot))
   (setq _d3_dot (float __d3_dot))
   (setq _j1 (float __j1))
   (setq _d3 (float __d3))
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
  (:j1
   (&optional __j1)
   (if __j1 (setq _j1 __j1)) _j1)
  (:d3
   (&optional __d3)
   (if __d3 (setq _d3 __d3)) _d3)
  (:serialization-length
   ()
   (+
    ;; float64 _theta_1_dot
    8
    ;; float64 _theta_2_dot
    8
    ;; float64 _d3_dot
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
     ;; float64 _theta_1_dot
       (sys::poke _theta_1_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_2_dot
       (sys::poke _theta_2_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3_dot
       (sys::poke _d3_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j1
       (sys::poke _j1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3
       (sys::poke _d3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _j1
     (setq _j1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d3
     (setq _d3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rbe500::get_tool_velocityResponse
  :super ros::object
  :slots (_vx _vy _vz _wx _wy _wz ))

(defmethod rbe500::get_tool_velocityResponse
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:wx __wx) 0.0)
    ((:wy __wy) 0.0)
    ((:wz __wz) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _wx (float __wx))
   (setq _wy (float __wy))
   (setq _wz (float __wz))
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
  (:wx
   (&optional __wx)
   (if __wx (setq _wx __wx)) _wx)
  (:wy
   (&optional __wy)
   (if __wy (setq _wy __wy)) _wy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ;; float64 _wx
    8
    ;; float64 _wy
    8
    ;; float64 _wz
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
     ;; float64 _wx
       (sys::poke _wx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wy
       (sys::poke _wy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wz
       (sys::poke _wz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _wx
     (setq _wx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wy
     (setq _wy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wz
     (setq _wz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rbe500::get_tool_velocity
  :super ros::object
  :slots ())

(setf (get rbe500::get_tool_velocity :md5sum-) "879ebdb7d19b92561b5fd9d91d6af529")
(setf (get rbe500::get_tool_velocity :datatype-) "rbe500/get_tool_velocity")
(setf (get rbe500::get_tool_velocity :request) rbe500::get_tool_velocityRequest)
(setf (get rbe500::get_tool_velocity :response) rbe500::get_tool_velocityResponse)

(defmethod rbe500::get_tool_velocityRequest
  (:response () (instance rbe500::get_tool_velocityResponse :init)))

(setf (get rbe500::get_tool_velocityRequest :md5sum-) "879ebdb7d19b92561b5fd9d91d6af529")
(setf (get rbe500::get_tool_velocityRequest :datatype-) "rbe500/get_tool_velocityRequest")
(setf (get rbe500::get_tool_velocityRequest :definition-)
      "float64 theta_1_dot
float64 theta_2_dot
float64 d3_dot
float64 j1
float64 d3
---
float64 vx
float64 vy
float64 vz
float64 wx
float64 wy
float64 wz

")

(setf (get rbe500::get_tool_velocityResponse :md5sum-) "879ebdb7d19b92561b5fd9d91d6af529")
(setf (get rbe500::get_tool_velocityResponse :datatype-) "rbe500/get_tool_velocityResponse")
(setf (get rbe500::get_tool_velocityResponse :definition-)
      "float64 theta_1_dot
float64 theta_2_dot
float64 d3_dot
float64 j1
float64 d3
---
float64 vx
float64 vy
float64 vz
float64 wx
float64 wy
float64 wz

")



(provide :rbe500/get_tool_velocity "879ebdb7d19b92561b5fd9d91d6af529")


