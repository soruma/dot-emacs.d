;; # キーボードマクロ
;; 本ウィンドウと別ウィンドウ間でテキストをコピーする
(fset 'workTocopy
  [?\C-x ?b return ?\C-  ?\C-e ?\C-w ?\C-n ?\C-x ?b return ?\C-y ?\C-n])
;; クリップボードの内容を先頭にコピーし、次行の先頭にカーソル移動
(fset 'clip-board-to-1st-copy
  "\C-y\C-n\C-a")
;; 本ウィンドウと別ウィンドウ間でテキストをコピーする "の"を探してカーソルを合わせる版
(fset 'two-buffer-copy-and-paste-key-is-no
   [?\C-s ?の ?\C-b ?\C-f ?\C-x ?o ?\C-  ?\C-e ?\C-w ?\C-d ?\C-x ?o ?\C-y ?\C-n ?\C-a])

