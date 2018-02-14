
(cl:in-package :asdf)

(defsystem "altimeter_pub-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "yocto_msg" :depends-on ("_package_yocto_msg"))
    (:file "_package_yocto_msg" :depends-on ("_package"))
  ))