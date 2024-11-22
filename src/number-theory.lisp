(in-package :scholarly-math)

(defun closest-multiple-of (m n &key (less-than nil))
  "Returns the closest multiple of m greater than n. If less-than is t,
return the closest multiple of m less than n. If n is a multiple of n,
return n."
  (check-type m plus-integer)
  (check-type n integer)

  (let ((remainder (rem n m)))
    (cond ((zerop remainder) n)
	  ((and (plusp n) (not less-than)) (+ n (- m remainder)))
	  ((and (minusp n) less-than) (- n (+ m remainder)))
	  (t (- n remainder)))))

(defun multiples-of (m &key (start 1) (end) (n))
  (check-type m integer)
  (check-type start integer)
  (if end (check-type end integer))
  (if (not end) (check-type n non-minus-integer))
  (if n (check-type n non-minus-integer))
  (if (not n) (check-type end integer))

  (let ((first-multiple (if (zerop start) 0 (+ start (- m (rem start m))))))
    (range (if (not n)
	       end
	       (let ((end-multiple (+ first-multiple (* m n))))
		 (if (not end)
		     end-multiple
		     (min end end-multiple))))
	   :start first-multiple :step m)))
