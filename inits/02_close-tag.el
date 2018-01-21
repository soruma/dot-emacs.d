; close tag and string
(electric-pair-mode 1)

(defun web-mode-hook ()
  "Hooks for web-mode."

  ;; auto tag closing
  (setq web-mode-auto-close-style 1)
  (setq web-mode-tag-auto-close-style 1)
)
