(defun sum-integers-from-0-to-n (n)
  "Calculate the sum of the integers from 0 up to and including N."
  (check-type n non-minus-integer)
  (ash (* n (1+ n)) -1))
