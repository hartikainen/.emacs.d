(load "elpy")
(when (require 'elpy nil t)
  (elpy-enable))

(pyvenv-activate "~/conda/envs/emacs")
(setq elpy-rpc-virtualenv-path 'current)

(set-face-attribute 'flymake-errline nil
                    :background nil
                    :foreground "red"
                    :underline t)
