(defsystem "scholarly-math"
  :description "An exploration of math with Common Lisp. May be a useful library one day."
  :author "Scholarly Punk (lispymath@proton.me)"
  :licence "GNU GPLv3"
  :version "0.0.1"
  :serial t
  :components ((:file "src/package")
	       (:file "src/types-and-predicates")
	       (:file "src/set")
	       (:file "src/arithmetic")
	       (:file "src/number-theory")
	       (:file "src/list")
	       (:file "src/main")
	       (:file "src/testing-utilities")))

(defsystem "scholarly-math/test"
  :depends-on ("scholarly-math" "gigamonkeys-test")
  :components ((:file "test/test")))
