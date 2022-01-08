
;gnu clisp  2.49.60
(defun fact (x)
  (defun iter (res counter)
      (if (< counter 1)
        res
        (iter (* res counter) (- counter 1))
      )
  )
  (iter x (- x 1))
)

(defun comb(n k)
    (if (or (= k 0) (= n k))
        1
        (/ 
     (fact n) 
     (* 
       (fact (- n k)) 
       (fact k)
     )
    )
      )
)

(defun triangleRow(x)
  (defun iter2 (count)
      (print (comb x count))
      (if (> count x)
        ()
        (iter2 (+ count 1))
      )
  )
  (iter2 0)
)

(print (triangleRow 10))