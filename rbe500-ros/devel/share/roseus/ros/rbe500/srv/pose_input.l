;; Auto-generated. Do not edit!


(when (boundp 'rbe500::pose_input)
  (if (not (find-package "RBE500"))
    (make-package "RBE500"))
  (shadow 'pose_input (find-package "RBE500")))
(unless (find-package "RBE500::POSE_INPUT")
  (make-package "RBE500::POSE_INPUT"))
(unless (find-package "RBE500::POSE_INPUTREQUEST")
  (make-package "RBE500::POSE_INPUTREQUEST"))
(unless (find-package "RBE500::POSE_INPUTRESPONSE")
  (make-package "RBE500::POSE_INPUTRESPONSE"))

(in-package "ROS")





(defclass rbe500::pose_inputRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod rbe500::pose_inputRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rbe500::pose_inputResponse
  :super ros::object
  :slots (_q1 _q2 _d3 ))

(defmethod rbe500::pose_inputResponse
  (:init
   (&key
    ((:q1 __q1) 0.0)
    ((:q2 __q2) 0.0)
    ((:d3 __d3) 0.0)
    )
   (send-super :init)
   (setq _q1 (float __q1))
   (setq _q2 (float __q2))
   (setq _d3 (float __d3))
   self)
  (:q1
   (&optional __q1)
   (if __q1 (setq _q1 __q1)) _q1)
  (:q2
   (&optional __q2)
   (if __q2 (setq _q2 __q2)) _q2)
  (:d3
   (&optional __d3)
   (if __d3 (setq _d3 __d3)) _d3)
  (:serialization-length
   ()
   (+
    ;; float64 _q1
    8
    ;; float64 _q2
    8
    ;; float64 _d3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _q1
       (sys::poke _q1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q2
       (sys::poke _q2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3
       (sys::poke _d3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _q1
     (setq _q1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q2
     (setq _q2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d3
     (setq _d3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rbe500::pose_input
  :super ros::object
  :slots ())

(setf (get rbe500::pose_input :md5sum-) "839a493deb7685894758863e9d9fcb39")
(setf (get rbe500::pose_input :datatype-) "rbe500/pose_input")
(setf (get rbe500::pose_input :request) rbe500::pose_inputRequest)
(setf (get rbe500::pose_input :response) rbe500::pose_inputResponse)

(defmethod rbe500::pose_inputRequest
  (:response () (instance rbe500::pose_inputResponse :init)))

(setf (get rbe500::pose_inputRequest :md5sum-) "839a493deb7685894758863e9d9fcb39")
(setf (get rbe500::pose_inputRequest :datatype-) "rbe500/pose_inputRequest")
(setf (get rbe500::pose_inputRequest :definition-)
      "float64 x
float64 y
float64 z
---
float64 q1
float64 q2
float64 d3

")

(setf (get rbe500::pose_inputResponse :md5sum-) "839a493deb7685894758863e9d9fcb39")
(setf (get rbe500::pose_inputResponse :datatype-) "rbe500/pose_inputResponse")
(setf (get rbe500::pose_inputResponse :definition-)
      "float64 x
float64 y
float64 z
---
float64 q1
float64 q2
float64 d3

")



(provide :rbe500/pose_input "839a493deb7685894758863e9d9fcb39")


