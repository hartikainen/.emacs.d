(require 'package)
(package-initialize)
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

(defvar my-packages
  '(;; auto-complete
    ac-math
    auctex
    magit
    multiple-cursors
    projectile
    helm-projectile

    clipetty

    transpose-frame

    cuda-mode
    web-mode
    coffee-mode
    scss-mode
    dockerfile-mode

    json

    gruvbox-theme

    ace-window
    smartrep
    yaml-mode

    yasnippet
    yasnippet-snippets

    highlight-indentation

    elpy
    python
    rainbow-delimiters
    nose
    ))


(defun uninstalled-packages (packages)
  (delq nil
        (mapcar (lambda (package)
                  (if (package-installed-p package nil) nil package))
                packages)))

(defun confirm-install (packages)
  (delq nil
        (mapcar (lambda (package)
                  (if (y-or-n-p (format "Package %s is missing. Install?" package)) package nil))
                packages)))

(let ((need-to-install
       (confirm-install (uninstalled-packages my-packages))))
  (when need-to-install
    (progn
      (package-refresh-contents)
      (dolist (package need-to-install)
        (package-install package)
        ))))
