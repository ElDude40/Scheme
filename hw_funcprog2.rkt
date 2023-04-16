;;;
; CSE240 Functional Programming 2 Homework
; Create procedures to modify lists
;
; Completion time: 4 hrs
;
; @author 
; @version 1
;;;


; Q1
(define (sumEven lst)
  (if (null? lst) ; return 0 for empy lst
      0
      (if (even? (car lst))
          (+ (car lst) (sumEven (cdr lst)))
          (sumEven (cdr lst)))))

; call sumEven
; 1.1
(sumEven '(1 3 -4 5 6 -7))

; unnamed procedure
;1.2
((lambda (lst)
  (if (even? (car lst))
      (+ (car lst) (sumEven (cdr lst))) ;use sumEven for recursion
      (sumEven (cdr lst))))
'(1 3 -4 5 6 -7))
       
; Q2
(define (list-push-back lst new-lst)
  (append lst new-lst))

;call list-push-back
(list-push-back '(4 3 7 1 2 9) '(1 2 ))

; Q3
(define (list-push-front lst new-lst)
  (append new-lst lst))

;call list-push-front
(list-push-front '(4 3 7 1 2 9) '(1 2))
 
; Q4
(define (list-draw-front n lst)
  (if (= n 0)        ;once n = 0 return empty
      '()
      (cons (car lst) (list-draw-front (- n 1) (cdr lst))))) ;make new list adding from the front until n = 0
;call list-draw-front
(list-draw-front 3 '(4 3 7 1 2 9))

; Q5
(define (list-draw-back n lst)
  ;once length of list = n return lst
  (if (= n (length lst))
      lst
      ;make lst smaller by removing front item
      (list-draw-back n (cdr lst))))
;call list-draw-back
(list-draw-back 3 '(4 3 7 1 2 9))

; Q6
(define (list-shuffle lst1 lst2)
;check lst1 and lst2. If either is null return the opposite lst
  (if (null? lst1)
      lst2
  (if(null? lst2)
     lst1
;use cons to create new lst
;take first item from lst1
;use recursion to swap to lst2 and take first item and add to lst
;recursion goes back and forth between lst1 and lst2 taking the first item as the lists get smaller
     (cons (car lst1) (list-shuffle lst2 (cdr lst1))))))
;call list-shuffle
(list-shuffle '(1 2) '(a b))
