; close tag and string
(electric-pair-mode t)

(defun web-mode-hook ()
  "Hooks for web-mode."

  ;; auto tag closing
  (setq web-mode-auto-close-style t)
  (setq web-mode-tag-auto-close-style t)
)
