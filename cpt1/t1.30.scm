; p40
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ (term a)
                        result))))
  (iter a 0))

(define (term a) a)
(define (next a) (+ a 1))
(sum term 1 next 5)

