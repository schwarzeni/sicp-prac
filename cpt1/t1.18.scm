; p31
; 俄式乘法
; https://www.jianshu.com/p/b729afff99ef
; 类比十进制乘法
; 88 * 0110 0011(2) =  88 * 0 * 2^7
;                    + 88 * 1 * 2^6
;                    + 88 * 1 * 2^5
;                    + 88 * 0 * 2^4
;                    + 88 * 0 * 2^3
;                    + 88 * 0 * 2^2
;                    + 88 * 1 * 2^1
;                    + 88 * 1 * 2^0
;
; 这跟第 17 题有啥区别？难道第 17 题叫我们用递归解？

(define (* a b)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (fn a b product)
    (if (= b 0)
      product
      (if (even? b)
        (fn (+ a a) (quotient b 2) product)
        (fn (+ a a) (quotient b 2) (+ product a)))))
  (fn a b 0))

(* 2 3)
(* 4 5)
(* 3 6)

