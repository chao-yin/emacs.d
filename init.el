;; adding mepla information 
(require 'package)
(add-to-list 'package-archives 
              '("melpa" . "http://elpa.emacs-china.org/melpa/"))
(package-initialize)

        
(defvar chaos-lisp-dir (expand-file-name "elisp" user-emacs-directory)
 "This directory contains all modules" )
(add-to-list 'load-path  chaos-lisp-dir)


(setq use-package-always-demand t)
(setq use-package-always-ensure t)
(require 'use-package)

;; require modules
(require 'init-interface)


