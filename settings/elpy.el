(load "elpy")
(when (require 'elpy nil t)
  (elpy-enable))

(pyvenv-activate "~/conda/envs/emacs")
