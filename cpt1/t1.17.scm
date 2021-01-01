; p31
; 参考 t1.16.scm 的思（模）路（板）
; 解答的过程跟题目的要求不太符合。。（不管了
(define (* a b)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (fn a counter product)
    (if (= counter 0)
      product
      (if (even? counter)
        (fn (+ a a) (quotient counter 2) product)
        (fn (+ a a) (quotient counter 2) (+ product a)))))
  (fn a b 0))
(* 2 3)
(* 4 5)
(* 3 6)
