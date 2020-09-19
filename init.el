;; adding mepla information 
(require 'package)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                        ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;;(add-to-list 'package-archives 
;;	     '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;	       )
(package-initialize)

;; adding the lisp directory        
(defvar chaos-lisp-dir (expand-file-name "elisp" user-emacs-directory)
 "This directory contains all modules" )
(add-to-list 'load-path  chaos-lisp-dir)
;;(add-to-list 'load-path (expand-file-name "emacs-application-framework" chaos-lisp-dir)) ;; add the EAF path to the laod-path

(setq use-package-always-demand t)
(setq use-package-always-ensure t)
(require 'use-package)

;; require modules
;;(require 'posframe)
(require 'init-interface)
(require 'init-ivy)
(require 'init-counsel)
(require 'init-swiper)
(require 'init-tramp)
(require 'init-basic)
(require 'init-company)
(require 'init-windows)
(require 'init-rime)
(require 'init-org)
(require 'init-rainbowdelimiters)
(require 'init-paredit)
(require 'init-auctex)
(require 'init-font)
(require 'init-dired)
;; eaf only for linux
(if (eq system-type 'gnu/linux)
    (require 'init-eaf)
    )
;;(require 'init-eaf)
;;(require 'init-socks)
(require 'init-magit)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
<<<<<<< HEAD
   '("e63734f92fe82179751d8491557b658af4312f79cf7b0a78af6903ade0d729cb" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" "ae65ccecdcc9eb29ec29172e1bfb6cadbe68108e1c0334f3ae52414097c501d2" "7675ffd2f5cb01a7aab53bcdd702fa019b56c764900f2eea0f74ccfc8e854386" "76b4632612953d1a8976d983c4fdf5c3af92d216e2f87ce2b0726a1f37606158" default))
 '(package-selected-packages
   '(magit magic-latex-buffer moe-theme gruvbox-theme company-auctex auctex rainbow-delimiters twilight-bright-theme speed-type rime counsel ivy use-package))
=======
   '("76b4632612953d1a8976d983c4fdf5c3af92d216e2f87ce2b0726a1f37606158" default))
 '(package-selected-packages
   '(gruvbox-theme company-auctex auctex rainbow-delimiters twilight-bright-theme speed-type rime counsel ivy use-package))
>>>>>>> c15dfb0... change the color of selection region and rearrange the files
 '(tramp-default-host "m2.smu.edu")
 '(tramp-default-method "ssh")
 '(tramp-default-user "chaoy"))
;;(custom-set-faces
<<<<<<< HEAD
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
;; '(rainbow-delimiters-depth-2-face ((t (:foreground "gold"))))
;; '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
;; '(rainbow-delimiters-depth-4-face ((t (:foreground "cyan"))))
;; '(rainbow-delimiters-depth-5-face ((t (:foreground "hot pink"))))
;; '(rainbow-delimiters-depth-6-face ((t (:foreground "dark blue"))))
;;)


(put 'dired-find-alternate-file 'disabled nil)
(custom-set-faces
=======
>>>>>>> c15dfb0... change the color of selection region and rearrange the files
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
<<<<<<< HEAD
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "gold"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "cyan"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "hot pink"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "dark blue"))))
 '(region ((t (:extend t :background "MistyRose1" :distant-foreground "gtk_selection_fg_color")))))
=======
;; '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
;; '(rainbow-delimiters-depth-2-face ((t (:foreground "gold"))))
;; '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
;; '(rainbow-delimiters-depth-4-face ((t (:foreground "cyan"))))
;; '(rainbow-delimiters-depth-5-face ((t (:foreground "hot pink"))))
;; '(rainbow-delimiters-depth-6-face ((t (:foreground "dark blue"))))
;;)


(put 'dired-find-alternate-file 'disabled nil)
>>>>>>> c15dfb0... change the color of selection region and rearrange the files
