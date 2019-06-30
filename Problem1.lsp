(defun prime (n &optional (factor (- n 1))) 
  (or (= factor 1)
       (and (/= (rem n factor) 0) (prime  n (- factor 1)))
  )
)

(defun palindrome (l)
  (equal l (reverse l))
)

(defun fib1(n)
    (if (< n 2)
        n
        (+ (fib1 (- n 1)) (fib1 (- n 2)))
    )
)   

(defun fib2 (n)
    (labels
        (
            (fib_optimized (num m l)
                (if (< num n)
                    (fib_optimized (+ 1 num) l (+ l m))
                    l
                )
            )
        )
        (fib_optimized 0 1 0)
    )
)

;;Problem 1.1
;;(print (prime 999))

;;Problem 1.2
;;(print (palindrome '(cat dog bird bird dog cat)))

;;Problem 1.3
;;(print (fib1 4))
;;(print (fib2 4))