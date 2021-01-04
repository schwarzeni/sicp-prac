; p48
; 求tanx

(define (cont-frac n d k)
  (define (iter i result)
    (if (= i 0)
      result
      (iter (- i 1)
            (/ (n i)
               (+ (d i)
                  result)))))
  (iter k 0))
(define (tan-cf x k)
  (cont-frac (lambda (i)
              (if (= i)
                x
                (- 0
                   (square x))))
            (lambda (i)
              (- (* i 2.0)
                 1.0)) k))
(tan-cf 1.571 100000)
; 90°
; 1.0644247501550974
