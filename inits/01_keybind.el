;; バックスペースの設定
(global-set-key (kbd "C-h") 'delete-backward-char)

;; ウィンドウ移動
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; キー移動
(global-set-key "\M-g" 'goto-line)

;; ¥の代わりにバックスラッシュを入力する
(define-key global-map [?¥] [?\\])
