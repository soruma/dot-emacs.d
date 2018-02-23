;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;; custom-set-* がinit.elの最後に追記されてうざいので別ファイルへ
(setq custom-file (locate-user-emacs-file "custom.el"))

;; package管理
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(
    auto-complete
    company
    e2wm
    elixir-mode
    elixir-yasnippets
    enh-ruby-mode
    gh-md
    helm
    helm-ag
    helm-perspeen
    ignoramus
    init-loader
    json
    neotree
    package-utils
    perspeen
    powerline
    pinentry
    rbenv
    robe
    slim-mode
    swift-mode
    twittering-mode
    yasnippet
    ))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
