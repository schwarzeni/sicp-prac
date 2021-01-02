; p29 - p30
; n 次方

; 递归，性能最差版
(define (expt b n)
  (if (= n 0)
    1
    (* b (expt b (- n 1)))))

; 尾递归
(define (expt-iter b n)
  (define (fn counter product)
    (if (= counter 0)
      product
      (fn (- counter 1) (* b product))))
  (fn n 1))

; 加速版，logn 级别
(define (expt-fast b n)
  (define (even? n)
    (= (remainder n 2) 0))
  (cond ((= n 0) 1)
        ((even? n) (square (expt-fast b (/ n 2))))
        (else (* b (expt-fast b (- n 1))))))



(expt 2 10)
(expt-iter 2 10)
(expt-fast 2 10)
(expt-fast 2 11)
(expt-fast 889858667 9999999997)
