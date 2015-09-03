(defsystem cl-tappsi-test
  :author "papachan <papachan@gmail.com>"
  :license ""
  :description "Tests for cl-tappsi."
  :depends-on (:cl-tappsi
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "cl-tappsi")))))
