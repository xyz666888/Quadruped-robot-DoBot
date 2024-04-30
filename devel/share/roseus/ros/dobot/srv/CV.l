;; Auto-generated. Do not edit!


(when (boundp 'dobot::CV)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'CV (find-package "DOBOT")))
(unless (find-package "DOBOT::CV")
  (make-package "DOBOT::CV"))
(unless (find-package "DOBOT::CVREQUEST")
  (make-package "DOBOT::CVREQUEST"))
(unless (find-package "DOBOT::CVRESPONSE")
  (make-package "DOBOT::CVRESPONSE"))

(in-package "ROS")





(defclass dobot::CVRequest
  :super ros::object
  :slots (_direction ))

(defmethod dobot::CVRequest
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

(defclass dobot::CVResponse
  :super ros::object
  :slots ())

(defmethod dobot::CVResponse
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

(defclass dobot::CV
  :super ros::object
  :slots ())

(setf (get dobot::CV :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get dobot::CV :datatype-) "dobot/CV")
(setf (get dobot::CV :request) dobot::CVRequest)
(setf (get dobot::CV :response) dobot::CVResponse)

(defmethod dobot::CVRequest
  (:response () (instance dobot::CVResponse :init)))

(setf (get dobot::CVRequest :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get dobot::CVRequest :datatype-) "dobot/CVRequest")
(setf (get dobot::CVRequest :definition-)
      "int8 direction
---
")

(setf (get dobot::CVResponse :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get dobot::CVResponse :datatype-) "dobot/CVResponse")
(setf (get dobot::CVResponse :definition-)
      "int8 direction
---
")



(provide :dobot/CV "82056227860a27ca2b5bdb9859d50460")


