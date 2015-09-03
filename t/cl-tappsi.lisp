(in-package :cl-user)
(defpackage cl-tappsi-test
  (:use :cl :fiveam))
(in-package :cl-tappsi-test)

(def-suite tests
  :description "cl-tappsi tests.")
(in-suite tests)

(test simple-test
  (is
   (equal 1 1))
  (is-true
   (and t t)))

(run! 'tests)
