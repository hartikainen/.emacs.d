(require 'scss-mode)

(setq css-indent-offset 2)
(setq scss-compile-at-save nil)
(add-to-list 'auto-mode-alist '("\\.less" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.scss" . scss-mode))
