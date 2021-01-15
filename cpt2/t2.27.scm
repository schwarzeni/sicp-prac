; p74
(define (deep-reverse items)
  (cond
    ((null? items) items)
    ((not (pair? items)) items)
    (else
      (append (deep-reverse (cdr items))
              (list (deep-reverse (car items)))))))


;(define l1 (list (list 1 2) (list 3 4)))
(define l1 (list (list 1 2) 3 4))
l1
(deep-reverse l1)
