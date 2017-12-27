(use-package dockerfile-mode
  :ensure t
  :commands dockerfile-mode
  :mode ("\\Dockerfile\\'" . dockerfile-mode))

(use-package docker-compose-mode
  :ensure t
  :commands docker-compose-mode
  :mode ("\\docker-compose\\.yml\\'" . docker-compose-mode))

(setq ac-modes (append ac-modes (list 'dockerfile-mode 'docker-compose-mode)))
