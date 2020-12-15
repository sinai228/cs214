;;;; FlyingBird.clj provides a FlyingBird "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sinai Park
;;;; Date:April 24 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'Bird' (to be used as superclass) 
(load "Bird")

;; define 'Duck' as 'subclass' of Bird
(defrecord FlyingBird [^Bird name] )

;;; constructors
;;; - default: takes no arguments
;;;   Postcondition: name is initialized to a default value
;;; - explicit: takes one parameter
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-FlyingBird
    ([]                (->FlyingBird "Ann Onymous"))
    ([^String itsName] (->FlyingBird itsName))
  )

;;; method to retrieve a Bird's Movement
;;; Receive: this, a FlyingBird's movement
;;; Return: "flew past"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod Movement FlyingBird [ _ ]
    "flew past"
  )