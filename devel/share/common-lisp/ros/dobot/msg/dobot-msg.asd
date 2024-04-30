
(cl:in-package :asdf)

(defsystem "dobot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "object" :depends-on ("_package_object"))
    (:file "_package_object" :depends-on ("_package"))
  ))