; p51
; 书上的示例错了吧，2^32 = 4294967296 ，不是 625
(define (repeated f x)
  (lambda (n)
    (letrec ((iter (lambda (count x)
                     (if (= count n)
                       x
                       (iter (+ 1 count) (f x))))))
      (if (< n 1)
        0
        (iter 1 (f x))))))
((repeated square 2) 5)
; 4294967296
((repeated (lambda (x) (+ x 1)) 1) 5)
; 6

