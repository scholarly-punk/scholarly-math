(in-package :scholarly-math)

(defun set-equal (s1 s2)
  "Return t if s1 is equal to s2. nil otherwise"
  (and (subsetp s1 s2)
       (subsetp s2 s1)))
