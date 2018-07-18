(mapc 'load (directory-files "~/.emacs.d/settings" t "^[A-Za-z\-]*\\.el"))
(setq term-buffer-maximum-size 10000)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; check emacs version
(if (version< emacs-version "26.1")
    (progn
      (global-linum-mode 1)
      (add-hook 'term-mode-hook (lambda () (linum-mode -1))))
  (progn
    (global-display-line-numbers-mode 1)
    (add-hook 'term-mode-hook (lambda () (display-line-numbers-mode -1)))))

;; From https://stackoverflow.com/a/42038174
(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(smartrep-define-key
    global-map "C-x" '(("^" . 'enlarge-window)
                       ("{" . 'shrink-window-horizontally)
                       ("}" . 'enlarge-window-horizontally)))
