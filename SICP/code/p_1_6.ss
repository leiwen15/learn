(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
    x)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.000001))

(define (square x) (* x x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y) 
    (/ (+ x y) 2))

(display (sqrt-iter 1.0 4))

(exit)
; 出现了 out of memory 的情况
; 参考：https://sicp.readthedocs.io/en/latest/chp1/6.html

