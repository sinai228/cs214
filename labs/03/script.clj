Script started on 2020-02-21 15:19:01-0500
]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ cat   cd src
]0;sp46@maroon10: ~/214/labs/03/clojure/src[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure/src[00m$ cat year_codes.clj
;;;; year_codes.clj is a driver for function yearCode.
;;;;
;;;; Input: An academic year, one of {freshman, sophomore,
;;;;                                  junior, senior}.
;;;; Output: The code for that academic year
;;;;         (1, 2, 3, 4 for valid entries; 
;;;;          0 for invalid entries).
;;;;
;;;; Usage: clojure -m year_codes
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sinai Park(sp46)
;;;; Date: Feb 21, 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns year_codes)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yearCode() returns the code for a given academic year.
;;; Receive: year, a string.
;;; Precondition: year is one of 
;;;   {freshman, sophomore, junior or senior}.
;;; Return: the integer code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn yearCode [year]

   (if (= year "freshman") 1
     (if (= year "sophomore") 2
        (if (= year "junior") 3
         (if (= year "senior") 4 0)
        )
      )
   )

)

;; solution using the cond function

(defn yearCode2 [year]
   (cond
     (= year "freshman")  1
     (= year "sophomore") 2
     (= year "junior")    3
     (= year "senior")    4
     :else                0
   )
 )

;; solution using the case function
(defn yearCode3 [year]
   (case year
     "freshman"  1
     "sophomore" 2
     "junior"    3
     "senior"    4
                 0 ; default
   )
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your academic year: ") (flush)
 (let
    [ year (read-line) ]                ; read year (a string)
    (println (yearCode year) "\n")      ; display its code
    (println (yearCode2 year) "\n")      ; display yearCode2 
    (println (yearCode3 year) "\n")      ; display yearCode3 
 )
)

]0;sp46@maroon10: ~/214/labs/03/clojure/src[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure/src[00m$ cd-  = -
/home/sp46/214/labs/03/clojure
]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes

Enter your academic year: freshman
1 

1 

1 

]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ sophomore
sophomore: command not found
]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ sophomoreclojure -m year_codes

Enter your academic year: sophomore
2 

2 

2 

]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ junior      clojure -m year_codes

Enter your academic year: junior
3 

3 

3 

]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes[12Psophomoreclojure -m year_codes

Enter your academic year: senior
4 

4 

4 

]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes
asjhdf
Enter your academic year: aasgjkdasg
0 

0 

0 

]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ 
]0;sp46@maroon10: ~/214/labs/03/clojure[01;32msp46@maroon10[00m:[01;34m~/214/labs/03/clojure[00m$ exit

Script done on 2020-02-21 15:23:07-0500
