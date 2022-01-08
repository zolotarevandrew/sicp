(defun even (a)
    (= (mod a 2) 0)
)

(defun square (a)
    (* a a)
)

(defun fib-iter(a b p q count)
    (if (= count 0)
        b
        (if (even count)
            (fib-iter a 
                      b 
                      (+ (square p) (square q))
                      (+ (* (* 2 p) q) (square q))
                      (/ count 2)
            )
            (fib-iter (+ (* b q) (* a q) (* a p)) 
                      (+ (* b p) (* a q)) 
                      p
                      q 
                      (- count 1)
            )
        )
    )
)

(defun fast-fib(n)
    (fib-iter 1 0 0 1 n)
)

(print (fast-fib 12))


