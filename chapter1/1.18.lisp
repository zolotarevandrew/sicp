(defun double (a)
    (+ a a)
)

(defun halve (a)
    (/ a 2)
)

(defun even (a)
    (= (mod a 2) 0)
)

(defun fast-multiplication-iter(a b)
    (defun iter(n b res)
        (if (= n 1)
            (+ b res)
            (if (even b)
                (iter (halve n) (double b) res)
                (iter (- n 1) b (+ res b))
            )
        )
    )
    (if (= b 0)
        0
        (iter b a 0)
    )
)

(print (fast-multiplication-iter 155 12313))


