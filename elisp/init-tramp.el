;;

(add-to-list 'load-path "~/package/emacs/tramp/lisp")
(require 'tramp)



(custom-set-variables
 '(tramp-default-method "ssh")
 '(tramp-default-user "chaoy")
 '(tramp-default-host "m2.smu.edu")
 )


(provide 'init-tramp)
