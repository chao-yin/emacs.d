

;(setq url-proxy-services
;      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
;        ("http" . "127.0.0.1:8118") ;; notice without protocol, do NOT add protocol
;        ("https" . "127.0.0.1:8118")))


;;(setq url-gateway-method 'socks)
;;(setq socks-server '("Default server" "127.0.0.1" 1080 5))

;; Configure network proxy
(defun show-proxy ()
  "Show http/https proxy."
  (interactive)
  (if url-proxy-services
      (message "Current proxy is \"%s\"" "127.0.0.1:8118")
    (message "No proxy")))

(defun set-proxy ()
  "Set http/https proxy."
  (interactive)
  (setq url-proxy-services `(("http" . "127.0.0.1:8118")
                             ("https" . "127.0.0.1:8118")))
  (show-proxy))

(defun unset-proxy ()
  "Unset http/https proxy."
  (interactive)
  (setq url-proxy-services nil)
  (show-proxy))

(defun toggle-proxy ()
  "Toggle http/https proxy."
  (interactive)
  (if url-proxy-services
      (unset-proxy)
    (set-proxy)))


;;;;;



(defun proxy-socks-show ()
  "Show SOCKS proxy."
  (interactive)
  (when (fboundp 'cadddr)                ; defined 25.2+
    (if (bound-and-true-p socks-noproxy)
        (message "Current SOCKS%d proxy is %s:%d"
                 (cadddr socks-server) (cadr socks-server) (caddr socks-server))
      (message "No SOCKS proxy"))))


(defun proxy-socks-toggle ()
  "Toggle SOCKS proxy."
  (interactive)
  (if (bound-and-true-p socks-noproxy)
      (proxy-socks-disable)
    (proxy-socks-enable)))

(defun proxy-socks-enable ()
  "Enable SOCKS proxy."
  (interactive)
  (require 'socks)
  (setq url-gateway-method 'socks
        socks-noproxy '("localhost")
        socks-server '("Default server" "127.0.0.1" 1080 5))
  (proxy-socks-show))

(defun proxy-socks-disable ()
  "Disable SOCKS proxy."
  (interactive)
  (setq url-gateway-method 'native
        socks-noproxy nil)
  (proxy-socks-show))




(provide 'init-socks)
