; Auto-generated. Do not edit!


(cl:in-package rbe500-srv)


;//! \htmlinclude pose_input-request.msg.html

(cl:defclass <pose_input-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass pose_input-request (<pose_input-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_input-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_input-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe500-srv:<pose_input-request> is deprecated: use rbe500-srv:pose_input-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <pose_input-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:x-val is deprecated.  Use rbe500-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <pose_input-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:y-val is deprecated.  Use rbe500-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <pose_input-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:z-val is deprecated.  Use rbe500-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_input-request>) ostream)
  "Serializes a message object of type '<pose_input-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_input-request>) istream)
  "Deserializes a message object of type '<pose_input-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_input-request>)))
  "Returns string type for a service object of type '<pose_input-request>"
  "rbe500/pose_inputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_input-request)))
  "Returns string type for a service object of type 'pose_input-request"
  "rbe500/pose_inputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_input-request>)))
  "Returns md5sum for a message object of type '<pose_input-request>"
  "839a493deb7685894758863e9d9fcb39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_input-request)))
  "Returns md5sum for a message object of type 'pose_input-request"
  "839a493deb7685894758863e9d9fcb39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_input-request>)))
  "Returns full string definition for message of type '<pose_input-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_input-request)))
  "Returns full string definition for message of type 'pose_input-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_input-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_input-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_input-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude pose_input-response.msg.html

(cl:defclass <pose_input-response> (roslisp-msg-protocol:ros-message)
  ((q1
    :reader q1
    :initarg :q1
    :type cl:float
    :initform 0.0)
   (q2
    :reader q2
    :initarg :q2
    :type cl:float
    :initform 0.0)
   (d3
    :reader d3
    :initarg :d3
    :type cl:float
    :initform 0.0))
)

(cl:defclass pose_input-response (<pose_input-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_input-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_input-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe500-srv:<pose_input-response> is deprecated: use rbe500-srv:pose_input-response instead.")))

(cl:ensure-generic-function 'q1-val :lambda-list '(m))
(cl:defmethod q1-val ((m <pose_input-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:q1-val is deprecated.  Use rbe500-srv:q1 instead.")
  (q1 m))

(cl:ensure-generic-function 'q2-val :lambda-list '(m))
(cl:defmethod q2-val ((m <pose_input-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:q2-val is deprecated.  Use rbe500-srv:q2 instead.")
  (q2 m))

(cl:ensure-generic-function 'd3-val :lambda-list '(m))
(cl:defmethod d3-val ((m <pose_input-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe500-srv:d3-val is deprecated.  Use rbe500-srv:d3 instead.")
  (d3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_input-response>) ostream)
  "Serializes a message object of type '<pose_input-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'q1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'q2))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_input-response>) istream)
  "Deserializes a message object of type '<pose_input-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q2) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_input-response>)))
  "Returns string type for a service object of type '<pose_input-response>"
  "rbe500/pose_inputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_input-response)))
  "Returns string type for a service object of type 'pose_input-response"
  "rbe500/pose_inputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_input-response>)))
  "Returns md5sum for a message object of type '<pose_input-response>"
  "839a493deb7685894758863e9d9fcb39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_input-response)))
  "Returns md5sum for a message object of type 'pose_input-response"
  "839a493deb7685894758863e9d9fcb39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_input-response>)))
  "Returns full string definition for message of type '<pose_input-response>"
  (cl:format cl:nil "float64 q1~%float64 q2~%float64 d3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_input-response)))
  "Returns full string definition for message of type 'pose_input-response"
  (cl:format cl:nil "float64 q1~%float64 q2~%float64 d3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_input-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_input-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_input-response
    (cl:cons ':q1 (q1 msg))
    (cl:cons ':q2 (q2 msg))
    (cl:cons ':d3 (d3 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pose_input)))
  'pose_input-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pose_input)))
  'pose_input-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_input)))
  "Returns string type for a service object of type '<pose_input>"
  "rbe500/pose_input")