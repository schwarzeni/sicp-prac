; p69
; 翻转列表
(define (reverse l)
  (if (null? l)
    l
    (append (reverse (cdr l)) (cons (car l) '()))))

(reverse (list 1 2 3 4 5 6))

