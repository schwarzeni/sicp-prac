; p17
(define (cube-root x)
  (cond ((= x 0) 0)
        ((< x 0) (cube-root-iter 0 -1.0 x))
        ((> x 0) (cube-root-iter 0 1.0 x))))
(define (cube-root-iter prev guess x)
  (if (or (= prev 0) (not (good-enough? prev guess)))
    (cube-root-iter guess (improve guess x) x)
    guess))
(define (good-enough? prev guess)
  (< (abs (- prev guess)) 0.000001))
(define (improve guess x)
  (/ (+
       (/ x (square guess))
       (* 2 guess))
     3))

(cube-root -8)
; -2.
(cube-root 78690)
; 42.85220578048458
