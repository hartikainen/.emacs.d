(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(with-eval-after-load 'auto-complete (ac-flyspell-workaround))
