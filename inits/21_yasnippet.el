(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/mySnippets"
        "~/.emacs.d/snippets"
        yas-installed-snippets-dir
        ))

;; yas起動
(yas-global-mode 1)

;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)

(add-to-list 'warning-suppress-types '(yasnippet backquote-change))

;; yatemplate
(yatemplate-fill-alist)
(auto-insert-mode 1)
