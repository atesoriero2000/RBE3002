; Auto-generated. Do not edit!


(cl:in-package rbe500-srv)


;//! \htmlinclude get_tool_velocity-request.msg.html

(cl:defclass <get_tool_velocity-request> (roslisp-msg-protocol:ros-message)
  ((theta_1_dot
    :reader theta_1_dot
    :initarg :theta_1_dot
    :type cl:float
    :initform 0.0)
   (theta_2_dot
    :reader theta_2_dot
    :initarg :theta_2_dot
    :type cl:float
    :initform 0.0)
   (d3_dot
    :reader d3_dot
    :initarg :d3_dot
    :type cl:float
    :initform 0.0)
   (j1
    :reader j1
    :initarg :j1
    :type cl:float
    :initform 0.0)
   (d3
    :reader d3
    :initarg :d3
    :type cl:float
    :initform 0.0))
)

(cl:defclass get_tool_velocity-request (<get_tool_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_tool_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_tool_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe500-srv:<get_tool_velocity-request> is deprecated: use rbe500-srv:get_tool_velocity-request instead.")))

(cl:ensure-generic-function 'theta_1_dot-val :lambda-list '(m))
(cl:defmethod theta_1_dot-val ((m <get_tool_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:theta_1_dot-val is deprecated.  Use rbe500-srv:theta_1_dot instead.")
  (theta_1_dot m))

(cl:ensure-generic-function 'theta_2_dot-val :lambda-list '(m))
(cl:defmethod theta_2_dot-val ((m <get_tool_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:theta_2_dot-val is deprecated.  Use rbe500-srv:theta_2_dot instead.")
  (theta_2_dot m))

(cl:ensure-generic-function 'd3_dot-val :lambda-list '(m))
(cl:defmethod d3_dot-val ((m <get_tool_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:d3_dot-val is deprecated.  Use rbe500-srv:d3_dot instead.")
  (d3_dot m))

(cl:ensure-generic-function 'j1-val :lambda-list '(m))
(cl:defmethod j1-val ((m <get_tool_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:j1-val is deprecated.  Use rbe500-srv:j1 instead.")
  (j1 m))

(cl:ensure-generic-function 'd3-val :lambda-list '(m))
(cl:defmethod d3-val ((m <get_tool_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:d3-val is deprecated.  Use rbe500-srv:d3 instead.")
  (d3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_tool_velocity-request>) ostream)
  "Serializes a message object of type '<get_tool_velocity-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta_1_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta_2_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd3_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'j1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_tool_velocity-request>) istream)
  "Deserializes a message object of type '<get_tool_velocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_1_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_2_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd3_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'j1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_tool_velocity-request>)))
  "Returns string type for a service object of type '<get_tool_velocity-request>"
  "rbe500/get_tool_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_tool_velocity-request)))
  "Returns string type for a service object of type 'get_tool_velocity-request"
  "rbe500/get_tool_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_tool_velocity-request>)))
  "Returns md5sum for a message object of type '<get_tool_velocity-request>"
  "879ebdb7d19b92561b5fd9d91d6af529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_tool_velocity-request)))
  "Returns md5sum for a message object of type 'get_tool_velocity-request"
  "879ebdb7d19b92561b5fd9d91d6af529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_tool_velocity-request>)))
  "Returns full string definition for message of type '<get_tool_velocity-request>"
  (cl:format cl:nil "float64 theta_1_dot~%float64 theta_2_dot~%float64 d3_dot~%float64 j1~%float64 d3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_tool_velocity-request)))
  "Returns full string definition for message of type 'get_tool_velocity-request"
  (cl:format cl:nil "float64 theta_1_dot~%float64 theta_2_dot~%float64 d3_dot~%float64 j1~%float64 d3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_tool_velocity-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_tool_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_tool_velocity-request
    (cl:cons ':theta_1_dot (theta_1_dot msg))
    (cl:cons ':theta_2_dot (theta_2_dot msg))
    (cl:cons ':d3_dot (d3_dot msg))
    (cl:cons ':j1 (j1 msg))
    (cl:cons ':d3 (d3 msg))
))
;//! \htmlinclude get_tool_velocity-response.msg.html

(cl:defclass <get_tool_velocity-response> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:float
    :initform 0.0)
   (wx
    :reader wx
    :initarg :wx
    :type cl:float
    :initform 0.0)
   (wy
    :reader wy
    :initarg :wy
    :type cl:float
    :initform 0.0)
   (wz
    :reader wz
    :initarg :wz
    :type cl:float
    :initform 0.0))
)

(cl:defclass get_tool_velocity-response (<get_tool_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_tool_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_tool_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe500-srv:<get_tool_velocity-response> is deprecated: use rbe500-srv:get_tool_velocity-response instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <get_tool_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:vx-val is deprecated.  Use rbe500-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <get_tool_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:vy-val is deprecated.  Use rbe500-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <get_tool_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:vz-val is deprecated.  Use rbe500-srv:vz instead.")
  (vz m))

(cl:ensure-generic-function 'wx-val :lambda-list '(m))
(cl:defmethod wx-val ((m <get_tool_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:wx-val is deprecated.  Use rbe500-srv:wx instead.")
  (wx m))

(cl:ensure-generic-function 'wy-val :lambda-list '(m))
(cl:defmethod wy-val ((m <get_tool_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:wy-val is deprecated.  Use rbe500-srv:wy instead.")
  (wy m))

(cl:ensure-generic-function 'wz-val :lambda-list '(m))
(cl:defmethod wz-val ((m <get_tool_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:wz-val is deprecated.  Use rbe500-srv:wz instead.")
  (wz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_tool_velocity-response>) ostream)
  "Serializes a message object of type '<get_tool_velocity-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_tool_velocity-response>) istream)
  "Deserializes a message object of type '<get_tool_velocity-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_tool_velocity-response>)))
  "Returns string type for a service object of type '<get_tool_velocity-response>"
  "rbe500/get_tool_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_tool_velocity-response)))
  "Returns string type for a service object of type 'get_tool_velocity-response"
  "rbe500/get_tool_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_tool_velocity-response>)))
  "Returns md5sum for a message object of type '<get_tool_velocity-response>"
  "879ebdb7d19b92561b5fd9d91d6af529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_tool_velocity-response)))
  "Returns md5sum for a message object of type 'get_tool_velocity-response"
  "879ebdb7d19b92561b5fd9d91d6af529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_tool_velocity-response>)))
  "Returns full string definition for message of type '<get_tool_velocity-response>"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 vz~%float64 wx~%float64 wy~%float64 wz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_tool_velocity-response)))
  "Returns full string definition for message of type 'get_tool_velocity-response"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 vz~%float64 wx~%float64 wy~%float64 wz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_tool_velocity-response>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_tool_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_tool_velocity-response
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':wx (wx msg))
    (cl:cons ':wy (wy msg))
    (cl:cons ':wz (wz msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_tool_velocity)))
  'get_tool_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_tool_velocity)))
  'get_tool_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_tool_velocity)))
  "Returns string type for a service object of type '<get_tool_velocity>"
  "rbe500/get_tool_velocity")