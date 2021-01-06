; p61
; cons car cdr 的简易实现
; awesome ！！！！！！！！！

(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "Argument not 0 or 1 -- CONS" m))))
  dispatch)
(define (car z) (z 0))
(define (cdr z) (z 1))

(car (cons 1 2))
; 1
(cdr (cons 1 2))
; 2
(car (cdr (cons 1 (cons 3 4))))
; 3

