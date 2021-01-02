; p36
; 不能，随着数值的增大，计算时间会逐渐变差
; expt-fast 计算大数时很慢
; (expt-fast 889858667 9999999997)
(define (expt-fast b n)
  (define (even? n)
    (= (remainder n 2) 0))
  (cond ((= n 0) 1)
        ((even? n) (square (expt-fast b (/ n 2))))
        (else (* b (expt-fast b (- n 1))))))
(define (expmod base exp m)
  (display base)(newline)
  (display exp)(newline)
  (display m)(newline)
  (newline)
  (remainder (expt-fast base exp) m))
(define (fermat-test n)
  (display "-----")(newline)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else #f)))

(fast-prime? 100003 10)
(fast-prime? 9999999997 10)
