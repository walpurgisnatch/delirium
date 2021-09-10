(in-package :cl-user)
(defpackage :delirium.macroworks
  (:use :cl)
  (:export :with-interned-symbols))

(in-package :delirium.macroworks)

(defmacro with-interned-symbols (symbol-list &body body)
  "Interns a set of symbols in the current package to variables of the same (symbol-name)."
  (let ((symbol-list
          (mapcar (lambda (s)
                    (list s `(intern (symbol-name ',s))))
                  symbol-list)))
    `(let ,symbol-list ,@body)))

