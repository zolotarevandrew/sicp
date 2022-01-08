

(defun pow (number, pow)
    (defun iter(n num res)
        (if (= n 1)
            (* num res)
            (if (= (mod n 2) 0)
                (iter (/ n 2) (* num num) res)
                (iter (- n 1) num (* res num))
            )
        )
    )
    (if (= pow 0)
        1
        (iter pow number 1)
    )
)


(print (pow 4 0))


