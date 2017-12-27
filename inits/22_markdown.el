;; markdown-mode,  markdown-edit-indirect
(use-package (markdown-mode markdown-edit-indirect)
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
  :bind (:markdown-mode-map
          ("C-c '" . markdown-edit-indirect)))
