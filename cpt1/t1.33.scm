; p40
(define (filtered-accumulate combiner filter null-value term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter a) (iter (next a) (combiner result
                               (term a))))
          (else (iter (next a) result))))
  (iter a null-value))

; 这里仅求所有奇数之和，作为测试
(define (sum-combiner x y) (+ x y))
(define (sum term a next b) (filtered-accumulate sum-combiner even? 0 term a next b))
(define (term a) a)
(define (next a) (+ a 1))
(sum term 1 next 5)

