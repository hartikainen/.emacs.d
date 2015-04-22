(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")
			 ("ELPA" . "http://tromey.com/elpa/")))

(package-initialize)

(defvar my-packages
      '(
        auctex
        magit
        multiple-cursors
	projectile
        ))

(mapc
 (lambda (package)
   (or (package-installed-p package)
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package))))
 my-packages)

(add-to-list 'load-path "~/.emacs.d/lisp")
