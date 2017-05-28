
(in-package :common-lisp-user)

(defpackage :fd-flexi.system
  (:use :common-lisp :asdf))

(in-package :fd-flexi.system)

(defsystem :fd-flexi
  :name "fd-flexi"
  :author "Thomas de Grivel <thoxdg@gmail.com>"
  :version "0.1"
  :description "Unix file descriptor flexi streams for Common Lisp"
  :depends-on ("fd-gray"
	       "flexi-streams")
  :components
  ((:file "package")
   (:file "fd-flexi" :depends-on ("package"))))
