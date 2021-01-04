; p40
; 迭代版，另一种略
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner result
                               (term a)))))
  (iter a null-value))

(define (sum-combiner x y) (+ x y))
(define (product-combiner x y) (* x y))

(define (sum term a next b) (accumulate sum-combiner 0 term a next b))
(define (product term a next b) (accumulate product-combiner 1 term a next b))

(define (term a) a)
(define (next a) (+ a 1))

(sum term 1 next 5)
(product term 1 next 5)

