(require 'powerline)

(set-face-attribute 'mode-line nil
                    :foreground "#fff"
                    :background "#004d10"
                    :box nil)

(set-face-attribute 'powerline-active1 nil
                    :foreground "#fff"
                    :background "#299a60"
                    :inherit 'mode-line)

(set-face-attribute 'powerline-active2 nil
                    :foreground "#000"
                    :background "#aeffbc"
                    :inherit 'mode-line)

(powerline-default-theme)
