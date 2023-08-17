(define (sqrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
    x)))

; 可以返回 True 或者 False，如果打印出来，就是 #t 或者 #f
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.000001))

(define (square x) (* x x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y) 
    (/ (+ x y) 2))

(display (sqrt-iter 1.0 4))
(exit)

