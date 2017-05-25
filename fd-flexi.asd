
(in-package :common-lisp-user)

(defpackage :fd-flexi.system
  (:use :common-lisp :asdf))

(in-package :fd-flexi.system)

(defsystem "fd-flexi"
  :depends-on ("fd-gray"
	       "flexi-streams")
  :components
  ((:file "package")
   (:file "fd-flexi" :depends-on ("package"))))
