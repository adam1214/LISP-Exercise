;;; Helper function to tell us if a given numbers has just one element.
(defun single (numbers)
  (if (consp numbers) ;;判斷是否為空
      (not (cdr numbers)) ;;返回true
      (= (length numbers) 1)
  )
)

(defun mergesort (numbers)
  (if (or (null numbers) (single numbers))
      numbers
      (let ((half (truncate (/ (length numbers) 2))))
        ;; MERGE is a standard common-lisp function.
        (merge (type-of numbers)
               (mergesort (subseq numbers 0 half))
               (mergesort (subseq numbers half))
               #'<
        )
      )
  )
)

; main function
(let ((n (read))
      (numbers))
  (setf numbers
    (do ((i 0 (+ i 1))
        (tmp nil))
    ((>= i n)
      (reverse tmp))
      (setf tmp (cons (read) tmp))))
    (format t "~{~A ~}~%" (mergesort numbers)))