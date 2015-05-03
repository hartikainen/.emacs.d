(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
;;(mapc 'load (directory-files "~/.emacs.d/lisp" t "^[A-Za-z]*\\.el"))

(load-file "~/.emacs.d/lisp/autosave.el")
(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/platform.el")
(load-file "~/.emacs.d/vars.el")
(load-file "~/.emacs.d/settings.el")
(load-file "~/.emacs.d/functions.el")
(load-file "~/.emacs.d/themes.el")
(load-file "~/.emacs.d/alias.el")

(setq mail-archive-file-name "~/.emacs.d/sentmail")
(defconst user-mail-address "kristian.hartikainen@gmail.com")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (< emacs-major-version 24)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-add ((t (:inherit diff-added :foreground "cyan"))))
 '(magit-diff-del ((t (:inherit diff-removed :foreground "red"))))
 '(magit-item-highlight ((t (:inherit secondary-selection :foreground "black"))))))
(put 'set-goal-column 'disabled nil)
