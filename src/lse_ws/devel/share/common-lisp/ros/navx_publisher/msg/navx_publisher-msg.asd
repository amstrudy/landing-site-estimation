
(cl:in-package :asdf)

(defsystem "navx_publisher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "stampedUInt64" :depends-on ("_package_stampedUInt64"))
    (:file "_package_stampedUInt64" :depends-on ("_package"))
    (:file "stampedUInt64" :depends-on ("_package_stampedUInt64"))
    (:file "_package_stampedUInt64" :depends-on ("_package"))
  ))