(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))
; 会一直执行，不退出
; 原因是，采用应用序，先求值再应用，一直在递归