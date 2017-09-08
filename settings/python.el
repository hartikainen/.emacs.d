(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 2
                            python-indent 2))))

(add-hook 'python-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c a") 'nosetests-all)
            (local-set-key (kbd "C-c m") 'nosetests-module)
            (local-set-key (kbd "C-c s") 'nosetests-one)))

(setq auto-mode-alist (cons '("\\.pyx$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pxd$" . python-mode) auto-mode-alist))
