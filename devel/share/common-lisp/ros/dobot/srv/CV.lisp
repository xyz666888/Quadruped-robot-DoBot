; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude CV-request.msg.html

(cl:defclass <CV-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CV-request (<CV-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CV-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CV-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<CV-request> is deprecated: use dobot-srv:CV-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <CV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:direction-val is deprecated.  Use dobot-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CV-request>) ostream)
  "Serializes a message object of type '<CV-request>"
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CV-request>) istream)
  "Deserializes a message object of type '<CV-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CV-request>)))
  "Returns string type for a service object of type '<CV-request>"
  "dobot/CVRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CV-request)))
  "Returns string type for a service object of type 'CV-request"
  "dobot/CVRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CV-request>)))
  "Returns md5sum for a message object of type '<CV-request>"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CV-request)))
  "Returns md5sum for a message object of type 'CV-request"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CV-request>)))
  "Returns full string definition for message of type '<CV-request>"
  (cl:format cl:nil "int8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CV-request)))
  "Returns full string definition for message of type 'CV-request"
  (cl:format cl:nil "int8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CV-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CV-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CV-request
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude CV-response.msg.html

(cl:defclass <CV-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CV-response (<CV-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CV-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CV-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<CV-response> is deprecated: use dobot-srv:CV-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CV-response>) ostream)
  "Serializes a message object of type '<CV-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CV-response>) istream)
  "Deserializes a message object of type '<CV-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CV-response>)))
  "Returns string type for a service object of type '<CV-response>"
  "dobot/CVResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CV-response)))
  "Returns string type for a service object of type 'CV-response"
  "dobot/CVResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CV-response>)))
  "Returns md5sum for a message object of type '<CV-response>"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CV-response)))
  "Returns md5sum for a message object of type 'CV-response"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CV-response>)))
  "Returns full string definition for message of type '<CV-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CV-response)))
  "Returns full string definition for message of type 'CV-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CV-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CV-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CV-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CV)))
  'CV-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CV)))
  'CV-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CV)))
  "Returns string type for a service object of type '<CV>"
  "dobot/CV")