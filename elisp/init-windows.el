;;(defun Open-buffer ()
;;  (interactive)
;;  (let ((SMUFileName "~/"))
;;    (find-file SMUFileName)
;;    (split-window-right)
;;    (other-window)
;;    (switch-to-buffer-other-window "*scratch*")
;;    ))


(defun Rearrange-windows ()
  (interactive)
  (let ((SMUFileName "~/"))
    (delete-other-windows)
    (find-file SMUFileName)
    (split-window-right)
    (other-window 1)
    (switch-to-buffer "*scratch*")
    )) 


(global-set-key (kbd "C-c C-r") 'Rearrange-windows)


(provide 'init-windows)

