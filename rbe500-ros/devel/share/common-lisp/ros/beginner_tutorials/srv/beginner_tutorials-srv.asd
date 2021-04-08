
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "beginner_tutorials" :depends-on ("_package_beginner_tutorials"))
    (:file "_package_beginner_tutorials" :depends-on ("_package"))
  ))