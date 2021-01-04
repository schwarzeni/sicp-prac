; p39
; 求积分
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

(define (simpson f a b n)
  (define (h) (/ (- b a)
                 n))
  (define (plus-y i)
    (cond ((or (= i 0) (= i n)) 1)
          ((even? i) 2)
          (else 4)))
  (define (term k) (* (plus-y k)
                   (f (+ a
                         (* k
                            (h))))))
  (define (add-i i) (+ i 1))
  (* (sum term 0 add-i n)
     (/ (h)
        3.0)))

(integral cube 0 1 0.01)    ; .24998750000000042
(integral cube 0 1 0.001)   ; .249999875000001

(simpson cube 0.0 1.0 100)  ; .24999999999999992
(simpson cube 0.0 1.0 1000) ; .2500000000000003

