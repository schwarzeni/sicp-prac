; p30
; 不考虑 n < 0 的情况
; 参考：https://leetcode-cn.com/problems/powx-n/
(define (expt-fast-iter b n)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (fn b counter product)
    (if (= counter 0)
      product
      (if (even? counter)
        (fn (square b) (quotient counter 2) product)
        (fn (square b) (quotient counter 2) (* product b)))
      ))
  (fn b n 1))

(expt-fast-iter 2 11)
(expt-fast-iter 2 10)

