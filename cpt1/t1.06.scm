; p16
; 猜测：会卡死，因为根据之前提到的应用序求值的逻辑，
;       调用函数时会先计算传入的参数，那么就会一直递
;       归调用 sqrt-iter 导致程序卡死
;
; 验证：
(define (if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(sqrt 9)
;Aborting!: maximum recursion depth exceeded

