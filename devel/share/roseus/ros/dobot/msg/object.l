;; Auto-generated. Do not edit!


(when (boundp 'dobot::object)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'object (find-package "DOBOT")))
(unless (find-package "DOBOT::OBJECT")
  (make-package "DOBOT::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude object.msg.html


(defclass dobot::object
  :super ros::object
  :slots (_name _x _y ))

(defmethod dobot::object
  (:init
   (&key
    ((:name __name) "")
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dobot::object :md5sum-) "51440d59a83e677184abc7a885de8833")
(setf (get dobot::object :datatype-) "dobot/object")
(setf (get dobot::object :definition-)
      "string name
int32 x
int32 y
")



(provide :dobot/object "51440d59a83e677184abc7a885de8833")


