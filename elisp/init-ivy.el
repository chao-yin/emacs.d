;; this file contains all setting about ivy mode

(use-package ivy
  :diminish ivy-mode
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-virutal-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-height 10)
  (setq ivy-initial-inputs-alist nil)
  (setq ivy-count-format "%d/%d  ")
  (setq ivy-re-builders-alist
        `((t . ivy--regex-ignore-order)))
  )


(provide 'init-ivy)
