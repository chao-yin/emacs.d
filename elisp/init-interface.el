;; this is the basic setting for interface of emacs 

(require 'menu-bar)
(menu-bar-mode 0) ;; Hidden the menu-bar
(require 'tool-bar)
(tool-bar-mode 0) ;; Hidden the tool-bar 
(require 'scroll-bar)
(scroll-bar-mode 0) ;; Hidden the scroll-bar

(setq frame-title-format "Chaos Vim" ) ;; set the frame title as Chaos Vim, you can modify it as you want

(setq inhibit-startup-screen t) ;; inhibit startup screen
(setq  initial-scratch-message nil)  ;; not display the scratch inital message

(provide 'init-interface)
