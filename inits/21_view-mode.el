;; view-mode hjkl
(add-hook 'view-mode-hook
          '(lambda()
             (progn
               (define-key view-mode-map "h" 'backward-char)
               (define-key view-mode-map "j" 'next-line)
               (define-key view-mode-map "k" 'previous-line)
               (define-key view-mode-map "l" 'forward-char)
               )))

;; jkでview-mode
(setq key-chord-two-keys-delay           0.15
      key-chord-safety-interval-backward 0.1
      key-chord-safety-interval-forward  0.25)
(key-chord-mode 1)
(key-chord-define-global "jk" 'view-mode)
