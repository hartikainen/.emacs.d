(mapc 'load (directory-files "~/.emacs.d/settings" t "^[A-Za-z\-]*\\.el"))
(setq term-buffer-maximum-size 200000)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(global-linum-mode 1)
(add-hook 'term-mode-hook (lambda () (linum-mode -1)))
