
;; 英文字体设置

(set-face-attribute 'default nil :font "Dejavu Sans Mono 11")
;;(set-frame-font "DejaVu Sans Mono-11" nil t)
;;(set-frame-font "WenQuanyi Micro Hei-12" nil t)


;; 中文字体设置

(cond
 ((string-equal system-type "gnu/linux") ; linux
  (when (member "WenQuanYi Micro Hei" (font-family-list))
    (set-fontset-font t '(#x4e00 . #x9fff)  "WenQuanYi Micro Hei")))
 )

;;选择区域颜色(the selection region color)

(custom-set-faces '(region ((t (:extend t :background "MistyRose1" :distant-foreground "gtk_selection_fg_color")))))

(provide 'init-font)
