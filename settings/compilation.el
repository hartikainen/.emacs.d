(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; (defun endless/colorize-compilation ()
;;   "Colorize from `compilation-filter-start' to `point'."
;;   (let ((inhibit-read-only t))
;;     (ansi-color-apply-on-region
;;      compilation-filter-start (point))))

;; (add-hook 'compilation-filter-hook #'endless/colorize-compilation)

;; (eval-after-load 'compile
;;   '(add-hook 'compilation-filter-hook
;;         (lambda () (ansi-color-process-output nil))))
