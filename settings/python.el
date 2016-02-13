(require 'py-autopep8)
;;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
;;(setq py-autopep8-options '("--max-line-length=100"))

(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 2
                            python-indent 2))))
