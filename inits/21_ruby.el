;; rbenv setting
(global-rbenv-mode)

;; ruby-mode
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("[Rr]akefile$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(setq ac-modes (append ac-modes (list 'ruby-mode)))

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
