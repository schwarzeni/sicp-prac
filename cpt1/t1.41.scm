; p51

(define (double f)
  (lambda (x) (f (f x))))

(define (inc x) (+ x 1))

(((double (double double)) inc) 5)
; 2^4
; 21

