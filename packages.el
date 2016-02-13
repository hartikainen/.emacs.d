(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")
			 ("ELPA" . "http://tromey.com/elpa/")))

(package-initialize)

(defvar my-packages
  '(
    auto-complete
    ac-math
    auctex
    magit
    multiple-cursors
    projectile
    cuda-mode
    monokai-theme
    web-mode
    ))

(mapc
 (lambda (package)
   (or (package-installed-p package)
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package))))
 my-packages)

;; (when (< emacs-major-version 24)
;;   (or (package-installed-p 'color-theme)
;;       (if (y-or-n-p (format "Theme '%s' is missing. Install it?" 'color-theme))
;; 	  (package-install-package)))
;;   )
