
(in-package :common-lisp)

(defpackage :fd-flexi
  (:use
   :common-lisp
   :flexi-streams)
  (:shadow
   #:stream)
  (:export
   #:stream
   #:with-stream))
