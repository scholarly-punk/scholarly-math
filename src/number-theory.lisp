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
  "Returns a list containing the multiples of M starting from START. END
specifies the end of the range. N specifies the first N multiples
between START and END to include in the list."
  (check-type m plus-integer)
  (check-type start integer)
  (if end (check-type end integer) (check-type n non-minus-integer))
  (if n (check-type n non-minus-integer) (check-type end integer))

  (let ((first-multiple (closest-multiple-of m start)))
    (range (if (not n)
	       end
	       (let ((end-multiple (+ first-multiple (* m n))))
		 (if (not end)
		     end-multiple
		     (min end end-multiple))))
	   :start first-multiple :step m)))

(defun count-multiples-between (m start end)
  "Return the number of multiples of M between START and END."
  (check-type m plus-integer)
  (check-type start integer)
  (check-type end integer)
  (- (truncate end m) (truncate start m)))

(defun multiple-of-p (n m)
  "Return t if N is a multiple of M, nil otherwise."
  (check-type n integer)
  (check-type m integer)
  (zerop (rem n m)))

(defun prime-sieve (n)
  "Return the prime numbers between 2 and N."
  (check-type n plus-integer)
  (if (= n 1)
      '()
      (do ((candidates (range (1+ n) :start 2)
		       (remove-if (lambda (x)
				    (multiple-of-p x (first candidates)))
				  (rest candidates)))
	   (primes '() (cons (car candidates) primes)))
	  ((> (sqr (first candidates)) n) (append (nreverse primes) candidates)))))

(defun primep (n)
  "Return t if n is a prime number. nil otherwise."
  (check-type n plus-integer)
  (cond ((= n 2))
	((or (= n 1) (evenp n))	nil)
	(t (notany (lambda (x)
		     (multiple-of-p n x))
		   (cdr (prime-sieve (truncate (sqrt n))))))))

(defun prime-factors (n)
  "Return a list containing the prime factors of N."
  (check-type n non-minus-integer)
  (labels ((prime-factors-h (n factors primes)
	     (cond ((or (= n 1) (endp primes)) factors)
		   ((multiple-of-p n (first primes))
		    (prime-factors-h (truncate n (first primes))
				     (cons (first primes) factors)
				     primes))
		   (t (prime-factors-h n factors (rest primes))))))
    (prime-factors-h n '() (prime-sieve n))))
