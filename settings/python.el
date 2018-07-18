(defun nosetests-all-virtualenv ()
  (interactive)
  (let ((nose-global-name
         (format
          "~/.virtualenvs/%s/bin/nosetests"
          (car
           (last
            (delete
             ""
             (split-string
              (nose-find-project-root)
              "/")))))))
    (nosetests-all)))

(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil
                  tab-width 4
                  python-indent-offset 4)
            (local-set-key (kbd "C-c c a") 'nosetests-all)
            (local-set-key (kbd "C-c c m") 'nosetests-module)
            (local-set-key (kbd "C-c c s") 'nosetests-one)
            (local-set-key (kbd "C-c C-c") 'compile)))

(setq auto-mode-alist (cons '("\\.pyx$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pxd$" . python-mode) auto-mode-alist))
