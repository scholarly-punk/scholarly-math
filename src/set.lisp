(in-package :scholarly-math)

(defun set-equal (s1 s2 &key (test #'eql))
  "Return t if set s1 is equal to set s2. nil otherwise"
  (check-type s1 list)
  (check-type s2 list)
  (check-type test function)
  (and (subsetp s1 s2 :test test)
       (subsetp s2 s1 :test test)))

(defun proper-subset-p (s1 s2 &key (test #'eql))
  "Return t if set s1 is a proper subset of set s2. A proper subset is a
set such that s1 is a subset of s2 but is not equal to s2."
  (check-type s1 list)
  (check-type s2 list)
  (check-type test function)
  (and (subsetp s1 s2)
       (not (set-equal s1 s2))))
