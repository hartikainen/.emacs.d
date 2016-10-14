(require 'projectile)
(require 'helm-projectile)

;; To enable Projectile only in selected modes
;; (add-hook 'ruby-mode-hook 'projectile-on)

(projectile-global-mode)

(setq projectile-completion-system 'helm
      Projectile-Switch-project-action 'helm-projectile
      projectile-enable-caching t
      projectile-remember-window-configs t)

(helm-projectile-on)

(setq projectile-indexing-method 'native)

(setq projectile-use-git-grep 1)
;; When running projectile-switch-project (C-c p s) Projectile invokes the command specified in
;; projectile-switch-project-action (by default it's projectile-find-file). If you want to use
;; something else alter the value of projectile-switch-project-action:
;; (setq projectile-switch-project-action 'projectile-dired)
