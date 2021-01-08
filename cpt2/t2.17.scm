; p69
; 求最后一个元素
(define (last-pair l)
  (if (null? (cdr l))
    l
    (last-pair (cdr l))))

(last-pair (list 1 2 3 4))
