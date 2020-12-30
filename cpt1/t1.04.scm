;p13

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; a + |b|
; 如果 b 大于 0，则计算 a+b
; 如果 b 小于等于 0，则计算 a-b

