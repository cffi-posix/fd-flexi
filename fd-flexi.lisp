
(in-package :fd-flexi)

(defun stream (fd &key (external-format :utf-8))
  (make-flexi-stream (make-instance 'fd-gray:stream :fd fd)
		     :external-format external-format))

(defmacro with-stream ((var fd &key (external-format :utf-8)) &body body)
  `(let ((,var (stream ,fd :external-format ,external-format)))
     (unwind-protect (progn ,@body)
       (close ,var))))
