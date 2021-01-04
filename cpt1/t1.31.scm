; p40
; 此为迭代式，另一种形式略
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* (term a)
                        result))))
  (iter a 1))

(define (pi n)
  (define (term x)
    (/ (* (+ x 1)
          (- x 1))
       (square x)))
  (define (next x) (+ x 2))
  (* 4.0
     (product term 3.0 next n)))

(pi 100000.0)

