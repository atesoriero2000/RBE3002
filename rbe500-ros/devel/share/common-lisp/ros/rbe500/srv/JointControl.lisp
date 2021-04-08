; Auto-generated. Do not edit!


(cl:in-package rbe500-srv)


;//! \htmlinclude JointControl-request.msg.html

(cl:defclass <JointControl-request> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (goal_position
    :reader goal_position
    :initarg :goal_position
    :type cl:float
    :initform 0.0)
   (goal_velocity
    :reader goal_velocity
    :initarg :goal_velocity
    :type cl:float
    :initform 0.0)
   (kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (ki
    :reader ki
    :initarg :ki
    :type cl:float
    :initform 0.0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointControl-request (<JointControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe500-srv:<JointControl-request> is deprecated: use rbe500-srv:JointControl-request instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:joint_name-val is deprecated.  Use rbe500-srv:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:goal_position-val is deprecated.  Use rbe500-srv:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'goal_velocity-val :lambda-list '(m))
(cl:defmethod goal_velocity-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:goal_velocity-val is deprecated.  Use rbe500-srv:goal_velocity instead.")
  (goal_velocity m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:kp-val is deprecated.  Use rbe500-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:ki-val is deprecated.  Use rbe500-srv:ki instead.")
  (ki m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:kd-val is deprecated.  Use rbe500-srv:kd instead.")
  (kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControl-request>) ostream)
  "Serializes a message object of type '<JointControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControl-request>) istream)
  "Deserializes a message object of type '<JointControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ki) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControl-request>)))
  "Returns string type for a service object of type '<JointControl-request>"
  "rbe500/JointControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControl-request)))
  "Returns string type for a service object of type 'JointControl-request"
  "rbe500/JointControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControl-request>)))
  "Returns md5sum for a message object of type '<JointControl-request>"
  "e3d59c5166a351c624cb61d94e16d813")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControl-request)))
  "Returns md5sum for a message object of type 'JointControl-request"
  "e3d59c5166a351c624cb61d94e16d813")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControl-request>)))
  "Returns full string definition for message of type '<JointControl-request>"
  (cl:format cl:nil "string joint_name~%float64 goal_position~%float64 goal_velocity~%float64 kp~%float64 ki~%float64 kd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControl-request)))
  "Returns full string definition for message of type 'JointControl-request"
  (cl:format cl:nil "string joint_name~%float64 goal_position~%float64 goal_velocity~%float64 kp~%float64 ki~%float64 kd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControl-request
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':goal_velocity (goal_velocity msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':ki (ki msg))
    (cl:cons ':kd (kd msg))
))
;//! \htmlinclude JointControl-response.msg.html

(cl:defclass <JointControl-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JointControl-response (<JointControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe500-srv:<JointControl-response> is deprecated: use rbe500-srv:JointControl-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControl-response>) ostream)
  "Serializes a message object of type '<JointControl-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControl-response>) istream)
  "Deserializes a message object of type '<JointControl-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControl-response>)))
  "Returns string type for a service object of type '<JointControl-response>"
  "rbe500/JointControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControl-response)))
  "Returns string type for a service object of type 'JointControl-response"
  "rbe500/JointControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControl-response>)))
  "Returns md5sum for a message object of type '<JointControl-response>"
  "e3d59c5166a351c624cb61d94e16d813")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControl-response)))
  "Returns md5sum for a message object of type 'JointControl-response"
  "e3d59c5166a351c624cb61d94e16d813")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControl-response>)))
  "Returns full string definition for message of type '<JointControl-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControl-response)))
  "Returns full string definition for message of type 'JointControl-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControl-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControl-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointControl)))
  'JointControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointControl)))
  'JointControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControl)))
  "Returns string type for a service object of type '<JointControl>"
  "rbe500/JointControl")