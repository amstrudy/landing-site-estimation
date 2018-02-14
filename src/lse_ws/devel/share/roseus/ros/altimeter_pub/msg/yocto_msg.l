;; Auto-generated. Do not edit!


(when (boundp 'altimeter_pub::yocto_msg)
  (if (not (find-package "ALTIMETER_PUB"))
    (make-package "ALTIMETER_PUB"))
  (shadow 'yocto_msg (find-package "ALTIMETER_PUB")))
(unless (find-package "ALTIMETER_PUB::YOCTO_MSG")
  (make-package "ALTIMETER_PUB::YOCTO_MSG"))

(in-package "ROS")
;;//! \htmlinclude yocto_msg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass altimeter_pub::yocto_msg
  :super ros::object
  :slots (_header _altitude _pressure _temperature ))

(defmethod altimeter_pub::yocto_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:altitude __altitude) 0.0)
    ((:pressure __pressure) 0.0)
    ((:temperature __temperature) (instance sensor_msgs::Temperature :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _altitude (float __altitude))
   (setq _pressure (float __pressure))
   (setq _temperature __temperature)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:temperature
   (&rest __temperature)
   (if (keywordp (car __temperature))
       (send* _temperature __temperature)
     (progn
       (if __temperature (setq _temperature (car __temperature)))
       _temperature)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _altitude
    8
    ;; float64 _pressure
    8
    ;; sensor_msgs/Temperature _temperature
    (send _temperature :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; sensor_msgs/Temperature _temperature
       (send _temperature :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; sensor_msgs/Temperature _temperature
     (send _temperature :deserialize buf ptr-) (incf ptr- (send _temperature :serialization-length))
   ;;
   self)
  )

(setf (get altimeter_pub::yocto_msg :md5sum-) "0a7b9308cb8964802e3d78385970d78f")
(setf (get altimeter_pub::yocto_msg :datatype-) "altimeter_pub/yocto_msg")
(setf (get altimeter_pub::yocto_msg :definition-)
      "# raw alt msg
std_msgs/Header header
float64 altitude # m
float64 pressure # hPa
sensor_msgs/Temperature temperature # C

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/Temperature
 # Single temperature reading.

 Header header           # timestamp is the time the temperature was measured
                         # frame_id is the location of the temperature reading

 float64 temperature     # Measurement of the Temperature in Degrees Celsius

 float64 variance        # 0 is interpreted as variance unknown
")



(provide :altimeter_pub/yocto_msg "0a7b9308cb8964802e3d78385970d78f")


