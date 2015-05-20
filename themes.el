(when (> emacs-major-version 23)
  (load-theme 'monokai t)
  )

;; (when (<= emacs-major-version 23)
;;   (add-to-list 'load-path "../path/to/color-theme.el/file")
;;   (require 'color-theme)
;;   (eval-after-load "color-theme"
;;     '(progn
;;        (color-theme-initialize)
;;        (color-theme-hober)))
;;   )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:inherit t :background "#303030")))))
