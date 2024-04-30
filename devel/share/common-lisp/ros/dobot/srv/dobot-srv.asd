
(cl:in-package :asdf)

(defsystem "dobot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CV" :depends-on ("_package_CV"))
    (:file "_package_CV" :depends-on ("_package"))
  ))