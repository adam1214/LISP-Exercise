(DEFUN FIB(n)
    (IF (< n 2)
        n
        (+ (FIB(- n 1)) (FIB(- n 2)))
    )   
)
(print (FIB 20))
