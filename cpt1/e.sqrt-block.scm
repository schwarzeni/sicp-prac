; p20
; 开方，牛顿逼近法, 定义为块结构形式

(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (sqrt-iter 1.0))
(define (average x y)
  (/ (+ x y) 2))

(sqrt 9)
;Value: 3.00009155413138

(sqrt 137)
;Value: 11.704699917758145
