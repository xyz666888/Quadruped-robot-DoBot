;; Auto-generated. Do not edit!


(when (boundp 'dobot::cv)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'cv (find-package "DOBOT")))
(unless (find-package "DOBOT::CV")
  (make-package "DOBOT::CV"))
(unless (find-package "DOBOT::CVREQUEST")
  (make-package "DOBOT::CVREQUEST"))
(unless (find-package "DOBOT::CVRESPONSE")
  (make-package "DOBOT::CVRESPONSE"))

(in-package "ROS")





(defclass dobot::cvRequest
  :super ros::object
  :slots (_direction ))

(defmethod dobot::cvRequest
  (:init
   (&key
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _direction 127) (setq _direction (- _direction 256)))
   ;;
   self)
  )

(defclass dobot::cvResponse
  :super ros::object
  :slots ())

(defmethod dobot::cvResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dobot::cv
  :super ros::object
  :slots ())

(setf (get dobot::cv :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get dobot::cv :datatype-) "dobot/cv")
(setf (get dobot::cv :request) dobot::cvRequest)
(setf (get dobot::cv :response) dobot::cvResponse)

(defmethod dobot::cvRequest
  (:response () (instance dobot::cvResponse :init)))

(setf (get dobot::cvRequest :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get dobot::cvRequest :datatype-) "dobot/cvRequest")
(setf (get dobot::cvRequest :definition-)
      "int8 direction
---
")

(setf (get dobot::cvResponse :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get dobot::cvResponse :datatype-) "dobot/cvResponse")
(setf (get dobot::cvResponse :definition-)
      "int8 direction
---
")



(provide :dobot/cv "82056227860a27ca2b5bdb9859d50460")


