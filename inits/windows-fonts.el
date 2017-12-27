;;フォントサイズ
(add-to-list 'default-frame-alist
             '(font . "ＭＳ ゴシック"))

;;日本語フォントの設定
(set-fontset-font
  nil 'japanese-jisx0208
  (font-spec :family "MS ゴシック"))
;半角と全角の比を1:2
(setq face-font-rescale-alist '((".*MS ゴシック.*" . 1.2)))
