(require 'projectile)

(projectile-global-mode)

;; To enable Projectile only in selected modes
;; (add-hook 'ruby-mode-hook 'projectile-on)

;; To enable caching unconditionally use this snippet of code:
;; (setq projectile-enable-caching t)

;; When running projectile-switch-project (C-c p s) Projectile invokes the command specified in
;; projectile-switch-project-action (by default it's projectile-find-file). If you want to use
;; something else alter the value of projectile-switch-project-action:
;; (setq projectile-switch-project-action 'projectile-dired)
