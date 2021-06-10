;; rbenv setting
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)

(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'yard-mode)

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))

(setq rbenv-installation-dir (concat (getenv "HOME") "/.anyenv/envs/rbenv"))
(setq enh-ruby-program (concat rbenv-installation-dir "/shims/ruby"))
