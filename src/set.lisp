(in-package :scholarly-math)

(defun set-equal (s1 s2 &key (test #'eql))
  "Return t if s1 is equal to s2. nil otherwise"
  (check-type s1 list)
  (check-type s2 list)
  (check-type test function)
  (and (subsetp s1 s2 :test test)
       (subsetp s2 s1 :test test)))
