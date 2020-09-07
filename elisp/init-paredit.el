(use-package paredit
  :init
  (autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)
  (add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           'enable-paredit-mode)
  (custom-set-faces
     '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
     '(rainbow-delimiters-depth-2-face ((t (:foreground "gold"))))
     '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
     '(rainbow-delimiters-depth-4-face ((t (:foreground "cyan"))))
     '(rainbow-delimiters-depth-5-face ((t (:foreground "hot pink"))))
     '(rainbow-delimiters-depth-6-face ((t (:foreground "dark blue")))))
  )

(provide 'init-paredit)
