(load "auctex.el" nil t t)  ;; put the actex package into the elpa floder
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
;;(setq TeX-view-program-selection '((output-pdf "Okular")))

(setq TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
;;     (output-pdf "Zathura")
     (output-pdf "Okular")
     (output-html "xdg-open"))))


;;(server-start)
(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-start-server t)


(setq TeX-PDF-mode t)

;; ### Set Okular as the default PDF viewer.

;; 
;;(eval-after-load "tex"
;;  '(setcar (cdr (assoc 'output-pdf TeX-view-program-selection)) "Okular"))


;; 加载 company-auctex 并初始化

(use-package company-auctex
  :config
  (add-hook 'LaTeX-mode-hook
    (lambda ()
      (make-local-variable 'company-backends)
      (setq company-backends '())
      (company-auctex-init))))



;;(use-package magic-latex-buffer
;;  :init
;;  (add-hook 'latex-mode-hook 'magic-latex-buffer)
;;  :config
;;  (setq  magic-latex-enable-block-highlight nil
;;	 magic-latex-enable-suscript        t
;;	 magic-latex-enable-pretty-symbols  t
;;	 magic-latex-enable-block-align     nil
;;	 magic-latex-enable-inline-image    nil
;;	 magic-latex-enable-minibuffer-echo nil)
;;  )

(provide 'init-auctex)
