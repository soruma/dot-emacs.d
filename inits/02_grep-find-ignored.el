(require 'ignoramus)
(ignoramus-setup)

(with-eval-after-load "grep"
  (add-to-list 'grep-find-ignored-directories ".git")
  (add-to-list 'grep-find-ignored-directories ".svn")

  (add-to-list 'grep-find-ignored-files "*.dll")
  (add-to-list 'grep-find-ignored-files "*.exe")
  (add-to-list 'grep-find-ignored-files "*.pdb")
