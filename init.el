(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(load-file "~/.emacs.d/lisp/autosave.el")
(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/platform.el")
(load-file "~/.emacs.d/vars.el")

(load-file "~/.emacs.d/alias.el")

(setq mail-archive-file-name "~/.emacs.d/sentmail")
(defconst user-mail-address "kristian.hartikainen@gmail.com")
