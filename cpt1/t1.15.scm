; p29
; sin 函数的计算，挺有意思的
; 具体题目内容忽略，数学太烂
(define (cube x) ( * x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))
(define pi (* 4 (atan 1.0)))

(sine (* (/ pi 180.0) 30))
(sine (* (/ pi 180.0) 90))
