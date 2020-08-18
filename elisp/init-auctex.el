(load "auctex.el" nil t t)  ;; put the actex package into the elpa floder
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
;;(setq TeX-view-program-selection (output-pdf "Okular"))

(setq TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Okular")
     (output-html "xdg-open"))))

;; 加载 company-auctex 并初始化

(use-package company-auctex
  :config
  (add-hook 'LaTeX-mode-hook
    (lambda ()
      (make-local-variable 'company-backends)
      (setq company-backends '())
      (company-auctex-init))))


(provide 'init-auctex)
