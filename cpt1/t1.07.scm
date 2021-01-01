; p16

(define (sqrt x)
  (if (= x 0)
    0
    (sqrt-iter 0 1.0 x)))
(define (sqrt-iter prev guess x)
  (if (or (= prev 0) (not (good-enough? prev guess)))
    (sqrt-iter guess (improve guess x) x)
    guess))
(define (good-enough? prev guess)
  (< (abs (- prev guess)) 0.000001))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))

(sqrt 9)
; 3.
(sqrt 137)
; 11.704699910719626
(sqrt (+ (sqrt 2) (sqrt 1234567))))
; 33.354533711593916
