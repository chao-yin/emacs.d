;; adding mepla information 
(require 'package)
(add-to-list 'package-archives 
              '("melpa" . "http://elpa.emacs-china.org/melpa/"))
(package-initialize)

;; adding the lisp directory        
(defvar chaos-lisp-dir (expand-file-name "elisp" user-emacs-directory)
 "This directory contains all modules" )
(add-to-list 'load-path  chaos-lisp-dir)


(setq use-package-always-demand t)
(setq use-package-always-ensure t)
(require 'use-package)

;; require modules
(require 'init-interface)
(require 'init-ivy)
(require 'init-counsel)
(require 'init-swiper)
(require 'init-tramp)
;;(require 'init-basic)
(require 'init-company)
(require 'init-windows)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (counsel ivy use-package)))
 '(tramp-default-host "m2.smu.edu")
 '(tramp-default-method "ssh")
 '(tramp-default-user "chaoy"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
