(load "elpy")
(when (require 'elpy nil t)
  (elpy-enable))

(pyvenv-activate "~/anaconda3/envs/emacs")
