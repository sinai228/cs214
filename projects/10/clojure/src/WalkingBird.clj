;;;; WalkingBird.clj provides a WalkingBird "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sinai Park
;;;; Date:April 24 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'Bird' (to be used as superclass) 
(load "Bird")

;; define 'Duck' as 'subclass' of Bird
(defrecord WalkingBird [^Bird name] )


;;; method to retrieve a Bird's Movement
;;; Receive: this, a FlyingBird's movement
;;; Return: "walked past"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getClass WalkingBird [ _ ]
    "walked past"
  )