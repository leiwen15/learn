(load "../code/lib/square.ss")
(load "../code/lib/average.ss")
(load "../code/lib/improve.ss")

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

(display (sqrt-iter 1.0 4))
(exit)
; 出现了 out of memory 的情况
; 参考：https://sicp.readthedocs.io/en/latest/chp1/6.html

;if 语句是一种特殊形式，当它的 predicate 部分为真时， 
; then-clause 分支会被求值，否则的话， else-clause 分支被求值，两个 clause 只有一个会被求值。

; 而另一方面，新定义的 new-if 只是一个普通函数，它没有 if 所具有的特殊形式，
; 根据解释器所使用的应用序求值规则，每个函数的实际参数在传入的时候都会被求值，
; 因此，当使用 new-if 函数时，无论 predicate 是真还是假， then-clause 和 else-clause 两个分支都会被求值