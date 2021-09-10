(in-package :cl-user)
(defpackage delirium
  (:use :cl))

(in-package :delirium)

(cl-reexport:reexport-from :delirium.macroworks)
