(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil
                  tab-width 2
                  python-indent 2)
            (local-set-key (kbd "C-c c a") 'nosetests-all)
            (local-set-key (kbd "C-c c m") 'nosetests-module)
            (local-set-key (kbd "C-c c s") 'nosetests-one)
            (local-set-key (kbd "C-c C-c") 'compile)))

(setq auto-mode-alist (cons '("\\.pyx$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pxd$" . python-mode) auto-mode-alist))
