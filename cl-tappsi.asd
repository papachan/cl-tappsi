(defsystem cl-tappsi
  :author "papachan <papachan@gmail.com>"
  :maintainer "papachan <papachan@gmail.com>"
  :license ""
  :version "0.1"
  :homepage "https://github.com/papachan/cl-tappsi"
  :bug-tracker "https://github.com/papachan/cl-tappsi/issues"
  :source-control (:git "git@github.com:papachan/cl-tappsi.git")
  :depends-on (:lucerne
               :drakma
               :quri
               :clack)
  :components ((:module "assets"
                :components
                ((:module "css"
                  :components
                  ((:static-file "style.css")))
                 (:module "js"
                  :components
                  ((:static-file "scripts.js")))))
               (:module "src"
                :serial t
                :components
                ((:file "cl-tappsi"))))
  :description ""
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op cl-tappsi-test))))
