(setq perspeen-use-tab t)
(perspeen-mode)

;; プレフィクスキー
(setq perspeen-keymap-prefix (kbd "C-z"))
(define-key perspeen-command-map (kbd "h") 'perspeen-tab-prev)
(define-key perspeen-command-map (kbd "l") 'perspeen-tab-next)
(define-key perspeen-command-map (kbd "C-d") 'perspeen-tab-del)

(global-set-key (kbd "C-c z") 'helm-perspeen)
