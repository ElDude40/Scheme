;;;
; CSE240 Functional Programming 1 Homework
; This assignment involves pracicing various expressions and procedures in Scheme.
; 
; For the first assignment, we are providing the default header so you can see how it
; looks in Scheme. For future assignments, you will need to add it yourself.
;
; Completion time: 4 hours
;
; @author 
; @version 1
;;;


; Q1
;1.1
(- 9 (+ 2 5))

;1.2
(- ( * 5 (+ 6 12 5)) 25)

;1.3
(* 7 (+ (- 5 (* 1 3)) (* 2 4)))

;1.4
(* 3 (+ 4 ( / (+ (* 6 6 ) (* 6 6)) ( + 10 2))))

;1.5
(+ (/ (- (/ (/ (* (+ 4 6)(+ 6 4)) 2) 2) 5) 2) (+ (/ (+ (* 4 5)(* 5 4)) 2) (* 4 5)))

; Q2
(define (add x y)
  (+ x y))

; Q3
;The code for the size n problem:
(define (square z)
  ;The code for stopping condition and return value:
  (if (= z 0)
      0
      ;
      (add (square (- (abs z) 1)) (+ (abs z) (- (abs z) 1)))))
;The code for the size m problem:
; (add (square (- (abs z) 1)) (+ (abs z) (- (abs z) 1)
;The code for constructing size n problem:
;(- (abs z) 1)
 
; Q4
(define (read-for-square)
  (square (read)))
  
; Q5
(define (diff-squares)
 (abs (- (read-for-square) (read-for-square))))
;diplay diff-squares
(display (diff-squares))
(newline)

; Q6
(define (sum-odds max)
  (if (<= max 0)
      0
      (if(odd? max)
         (+ max (sum-odds (- max 2)))
         (sum-odds (- max 1)))))
 
;displya sum-odds 10     
(display (sum-odds 10))
(newline)
      
; Q7
(define (fib a)
  (cond ((= a 0) 0)
        ((= a 1) 1)
        (else (+(fib ( - a 1)) (fib (- a 2))))))
;displya fib 9 
(display (fib 9))
(newline)
