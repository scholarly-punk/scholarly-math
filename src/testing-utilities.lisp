(in-package :scholarly-math)

(defun repeat-with-random-arg (fn n min max)
  "Call function FN N times with a random integer argument each time.
The random integer is generated between MIN (inclusive and
MAX (exclusive)."
  (check-type n scholarly-math:non-minus-integer)
  (check-type min integer)
  (check-type max integer)
  (assert (<= min max) (min max) "MIN should be less than or equal to MAX. MIN: ~A, MAX: ~A" min max)
  (dotimes (_ n)
    (funcall fn (+ min (random (- max min))))))
