(require 'package)

(setq package-archives
      '(("MELPA Stable" . "http://stable.melpa.org/packages/")
        ("MELPA" . "http://melpa.org/packages/")
        ("GNU ELPA" . "http://elpa.gnu.org/packages/")
        ;;("marmalade" . "https://marmalade-repo.org/packages/")
        ;;("ELPA" . "http://tromey.com/elpa/")
        )
      package-archive-priorities
      '(("MELPA Stable" . 10)
        ("MELPA" . 5)
        ("GNU ELPA" . 0)))

(package-initialize)

(defvar my-packages
  '(
    auto-complete
    ac-math
    auctex
    magit
    multiple-cursors
    projectile
    helm-projectile

    cuda-mode
    web-mode
    coffee-mode
    scss-mode
    smart-tab

    json

    color-theme-solarized
    ace-window
    smartrep
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
