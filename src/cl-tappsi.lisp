(in-package :cl-user)
(defpackage cl-tappsi
  (:use :cl :lucerne)
  (:export :app)
  (:documentation "Main cl-tappsi code."))
(in-package :cl-tappsi)

;;; App

(defapp app
  :middlewares ((clack.middleware.static:<clack-middleware-static>
                 :root (asdf:system-relative-pathname :cl-tappsi #p"assets/")
                 :path "/static/")))

;;; Templates

(djula:add-template-directory
 (asdf:system-relative-pathname :cl-tappsi #p"templates/"))

(defparameter +index+ (djula:compile-template* "index.html"))

;;; Views

@route app "/"
(defview index ()
  (render-template (+index+)))
