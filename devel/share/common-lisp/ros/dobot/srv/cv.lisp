; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude cv-request.msg.html

(cl:defclass <cv-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass cv-request (<cv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<cv-request> is deprecated: use dobot-srv:cv-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <cv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:direction-val is deprecated.  Use dobot-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cv-request>) ostream)
  "Serializes a message object of type '<cv-request>"
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cv-request>) istream)
  "Deserializes a message object of type '<cv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cv-request>)))
  "Returns string type for a service object of type '<cv-request>"
  "dobot/cvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cv-request)))
  "Returns string type for a service object of type 'cv-request"
  "dobot/cvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cv-request>)))
  "Returns md5sum for a message object of type '<cv-request>"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cv-request)))
  "Returns md5sum for a message object of type 'cv-request"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cv-request>)))
  "Returns full string definition for message of type '<cv-request>"
  (cl:format cl:nil "int8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cv-request)))
  "Returns full string definition for message of type 'cv-request"
  (cl:format cl:nil "int8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cv-request
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude cv-response.msg.html

(cl:defclass <cv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass cv-response (<cv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<cv-response> is deprecated: use dobot-srv:cv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cv-response>) ostream)
  "Serializes a message object of type '<cv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cv-response>) istream)
  "Deserializes a message object of type '<cv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cv-response>)))
  "Returns string type for a service object of type '<cv-response>"
  "dobot/cvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cv-response)))
  "Returns string type for a service object of type 'cv-response"
  "dobot/cvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cv-response>)))
  "Returns md5sum for a message object of type '<cv-response>"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cv-response)))
  "Returns md5sum for a message object of type 'cv-response"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cv-response>)))
  "Returns full string definition for message of type '<cv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cv-response)))
  "Returns full string definition for message of type 'cv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cv)))
  'cv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cv)))
  'cv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cv)))
  "Returns string type for a service object of type '<cv>"
  "dobot/cv")