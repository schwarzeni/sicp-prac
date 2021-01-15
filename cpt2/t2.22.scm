; p71
; 第一种
; 倒数第三行到倒数第二行，使用 cons 生成新答案时，反了，应该使用在交换参数顺序后使用 append
; (append answer (cons (square (car things)) '()))

; 第二种
; cons 第一个参数如果是列表的话，那么最后就会是这样的效果 (((1) 2) 3)
