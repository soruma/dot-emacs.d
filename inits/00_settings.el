;; `yes or no`を`y or n`に統一
(defalias 'yes-or-no-p 'y-or-n-p)

;; 本当に終了してもいいかを聞くように設定
(setq confirm-kill-emacs 'y-or-n-p)

;; スタートアップ非表示
(setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; auto index for imenu
(setq imenu-auto-rescan t)

;; desktop.el
(setq desktop-save-mode t)

(setq warning-suppress-types nil)

;; CamelCase
(global-subword-mode 1)

;; 月曜日始まり
(setq calendar-week-start-day 1)

;; GCの閾値をデフォルトの10倍にする
(setq gc-cons-threshold (* gc-cons-threshold 10))

;; 重複する履歴は保存しない
(setq history-delete-duplicates t)

;; path
(dolist (dir (list
              "/sbin"
              "/usr/sbin"
              "/bin"
              "/usr/bin"
              "/opt/local/bin"
              "/sw/bin"
              "/usr/local/bin"
              (expand-file-name "~/bin")
              (expand-file-name "~/.emacs.d/bin")
              ))
 (when (and (file-exists-p dir) (not (member dir exec-path)))
   (setenv "PATH" (concat dir ":" (getenv "PATH")))
   (setq exec-path (append (list dir) exec-path))))

(setq require-final-newline nil)

(defun my:iterm-app ()
  "Open iterm.app with current dir."
  (interactive)
  (let ((dir default-directory))
    (shell-command (concat "open -a iterm.app " dir))))
