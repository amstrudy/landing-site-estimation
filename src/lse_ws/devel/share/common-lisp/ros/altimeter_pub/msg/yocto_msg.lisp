; Auto-generated. Do not edit!


(cl:in-package altimeter_pub-msg)


;//! \htmlinclude yocto_msg.msg.html

(cl:defclass <yocto_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type sensor_msgs-msg:Temperature
    :initform (cl:make-instance 'sensor_msgs-msg:Temperature)))
)

(cl:defclass yocto_msg (<yocto_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <yocto_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'yocto_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name altimeter_pub-msg:<yocto_msg> is deprecated: use altimeter_pub-msg:yocto_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <yocto_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader altimeter_pub-msg:header-val is deprecated.  Use altimeter_pub-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <yocto_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader altimeter_pub-msg:altitude-val is deprecated.  Use altimeter_pub-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <yocto_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader altimeter_pub-msg:pressure-val is deprecated.  Use altimeter_pub-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <yocto_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader altimeter_pub-msg:temperature-val is deprecated.  Use altimeter_pub-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <yocto_msg>) ostream)
  "Serializes a message object of type '<yocto_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'temperature) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <yocto_msg>) istream)
  "Deserializes a message object of type '<yocto_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'temperature) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<yocto_msg>)))
  "Returns string type for a message object of type '<yocto_msg>"
  "altimeter_pub/yocto_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'yocto_msg)))
  "Returns string type for a message object of type 'yocto_msg"
  "altimeter_pub/yocto_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<yocto_msg>)))
  "Returns md5sum for a message object of type '<yocto_msg>"
  "0a7b9308cb8964802e3d78385970d78f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'yocto_msg)))
  "Returns md5sum for a message object of type 'yocto_msg"
  "0a7b9308cb8964802e3d78385970d78f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<yocto_msg>)))
  "Returns full string definition for message of type '<yocto_msg>"
  (cl:format cl:nil "# raw alt msg~%std_msgs/Header header~%float64 altitude # m~%float64 pressure # hPa~%sensor_msgs/Temperature temperature # C~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Temperature~% # Single temperature reading.~%~% Header header           # timestamp is the time the temperature was measured~%                         # frame_id is the location of the temperature reading~%~% float64 temperature     # Measurement of the Temperature in Degrees Celsius~%~% float64 variance        # 0 is interpreted as variance unknown~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'yocto_msg)))
  "Returns full string definition for message of type 'yocto_msg"
  (cl:format cl:nil "# raw alt msg~%std_msgs/Header header~%float64 altitude # m~%float64 pressure # hPa~%sensor_msgs/Temperature temperature # C~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Temperature~% # Single temperature reading.~%~% Header header           # timestamp is the time the temperature was measured~%                         # frame_id is the location of the temperature reading~%~% float64 temperature     # Measurement of the Temperature in Degrees Celsius~%~% float64 variance        # 0 is interpreted as variance unknown~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <yocto_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'temperature))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <yocto_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'yocto_msg
    (cl:cons ':header (header msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':temperature (temperature msg))
))
