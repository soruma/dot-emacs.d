;; ファイルをWindowsの関連付けで開く
(add-hook 'dired-load-hook (function (lambda ()
    (define-key dired-mode-map "w" 'dired-open-file)
)))
(defun dired-open-file ()
  "In dired, open the file named on this line."
  (interactive)
  (let* ((file (dired-get-filename)))
    (message "WindowsOpening %s..." file)
      (call-process "cmd.exe" nil 0 nil "/c" "start" "" (convert-standard-filename file) )
    (message "WindowsOpening %s done" file)
   ))
