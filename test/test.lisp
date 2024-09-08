(in-package :scholarly-math/test)

(deftest test-non-minus-p ()
  (check
    (non-minus-p 1.234)
    (non-minus-p 1)
    (non-minus-p 0)
    (not (non-minus-p -1))
    (not (non-minus-p -1.234))))

(deftest test-non-plus-p ()
  (check
    (not (non-plus-p 1.234))
    (not (non-plus-p 1))
    (non-plus-p 0)
    (non-plus-p -1)
    (non-plus-p -1.234)))

(deftest test-non-zero-p ()
  (check
    (non-zero-p 1.234)
    (non-zero-p 1)
    (not (non-zero-p 0))
    (non-zero-p -1)
    (non-zero-p -1.234)))

(deftest test-plus-integer-p ()
  (check
    (not (plus-integer-p 1.234))
    (plus-integer-p 1)
    (not (plus-integer-p 0))
    (not (plus-integer-p -1))
    (not (plus-integer-p -1.234))))

(deftest test-minus-integer-p ()
  (check
    (not (minus-integer-p 1.234))
    (not (minus-integer-p 1))
    (not (minus-integer-p 0))
    (minus-integer-p -1)
    (not (minus-integer-p -1.234))))

(deftest test-non-minus-integer-p ()
  (check
    (not (non-minus-integer-p 1.234))
    (non-minus-integer-p 1)
    (non-minus-integer-p 0)
    (not (non-minus-integer-p -1))
    (not (non-minus-integer-p -1.234))))

(deftest test-non-plus-integer-p ()
  (check
    (not (non-plus-integer-p 1.234))
    (not (non-plus-integer-p 1))
    (non-plus-integer-p 0)
    (non-plus-integer-p -1)
    (not (non-plus-integer-p -1.234))))

(deftest test-non-zero-integer-p ()
  (check
    (not (non-zero-integer-p 1.234))
    (non-zero-integer-p 1)
    (not (non-zero-integer-p 0))
    (non-zero-integer-p -1)
    (not (non-zero-integer-p -1.234))))

(deftest test-type-plus-integer ()
  (check
    (not (typep 1.234 'plus-integer))
    (typep 1 'plus-integer)
    (not (typep 0 'plus-integer))
    (not (typep -1 'plus-integer))
    (not (typep -1.234 'plus-integer))))

(deftest test-type-minus-integer ()
  (check
    (not (typep 1.234 'minus-integer))
    (not (typep 1 'minus-integer))
    (not (typep 0 'minus-integer))
    (typep -1 'minus-integer)
    (not (typep -1.234 'minus-integer))))

(deftest test-type-non-minus-integer ()
  (check
    (not (typep 1.234 'non-minus-integer))
    (typep 1 'non-minus-integer)
    (typep 0 'non-minus-integer)
    (not (typep -1 'non-minus-integer))
    (not (typep -1.234 'non-minus-integer))))

(deftest test-type-non-plus-integer ()
  (check
    (not (typep 1.234 'non-plus-integer))
    (not (typep 1 'non-plus-integer))
    (typep 0 'non-plus-integer)
    (typep -1 'non-plus-integer)
    (not (typep -1.234 'non-plus-integer))))

(deftest test-type-non-zero-integer ()
  (check
    (not (typep 1.234 'non-zero-integer))
    (typep 1 'non-zero-integer)
    (not (typep 0 'non-zero-integer))
    (typep -1 'non-zero-integer)
    (not (typep -1.234 'non-zero-integer))))

(deftest test-type-plus-real ()
  (check
    (typep 1.234 'plus-real)
    (typep 1 'plus-real)
    (not (typep 0 'plus-real))
    (not (typep -1 'plus-real))
    (not (typep -1.234 'plus-real))))

(deftest test-type-minus-real ()
  (check
    (not (typep 1.234 'minus-real))
    (not (typep 1 'minus-real))
    (not (typep 0 'minus-real))
    (typep -1 'minus-real)
    (typep -1.234 'minus-real)))

(deftest test-type-non-minus-real ()
  (check
    (typep 1.234 'non-minus-real)
    (typep 1 'non-minus-real)
    (typep 0 'non-minus-real)
    (not (typep -1 'non-minus-real))
    (not (typep -1.234 'non-minus-real))))

(deftest test-type-non-plus-real ()
  (check
    (not (typep 1.234 'non-plus-real))
    (not (typep 1 'non-plus-real))
    (typep 0 'non-plus-real)
    (typep -1 'non-plus-real)
    (typep -1.234 'non-plus-real)))

(deftest test-type-non-zero-real ()
  (check
    (typep 1.234 'non-zero-real)
    (typep 1 'non-zero-real)
    (not (typep 0 'non-zero-real))
    (typep -1 'non-zero-real)
    (typep -1.234 'non-zero-real)))

(deftest test-numeric-predicates ()
  (check
    (test-non-minus-p)
    (test-non-plus-p)
    (test-non-zero-p)
    (test-plus-integer-p)
    (test-minus-integer-p)
    (test-non-minus-integer-p)
    (test-non-plus-integer-p)
    (test-non-zero-integer-p)))

(deftest test-deftypes ()
  (check
    (test-type-plus-integer)
    (test-type-minus-integer)
    (test-type-non-minus-integer)
    (test-type-non-plus-integer)
    (test-type-non-zero-integer)
    (test-type-plus-real)
    (test-type-minus-real)
    (test-type-non-minus-real)
    (test-type-non-plus-real)
    (test-type-non-zero-real)))

(deftest test-types-and-predicates ()
  (check 
   (test-numeric-predicates)
   (test-deftypes)))

(deftest test-sum-integers-from-0-to-n ()
  (check
    (= (sum-integers-from-0-to-n 10) 55)
    (= (sum-integers-from-0-to-n 1000) 500500)))

(deftest test-all ()
  (check
    (test-types-and-predicates)
    (test-sum-integers-from-0-to-n)))
