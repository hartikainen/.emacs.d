(require 'projectile)
(require 'helm-projectile)

;; To enable Projectile only in selected modes
;; (add-hook 'ruby-mode-hook 'projectile-on)
;;

(projectile-global-mode)

(setq projectile-completion-system 'helm
      projectile-switch-project-action 'helm-projectile
      projectile-enable-caching t
      projectile-remember-window-configs t)

(helm-projectile-on)

(setq projectile-use-git-grep 1)
(setq projectile-indexing-method 'git)

;; projectile-globally-ignored-files
;; projectile-globally-ignored-directories
;; projectile-globally-ignored-file-suffixes
;; projectile-globally-ignored-modes

;;
(add-to-list 'projectile-globally-ignored-directories "node_modules")
(add-to-list 'projectile-globally-ignored-directories "generated")
(add-to-list 'projectile-globally-ignored-directories "venv")
(add-to-list 'projectile-globally-ignored-directories ".venv")

;; When running projectile-switch-project (C-c p s) Projectile invokes the command specified in
;; projectile-switch-project-action (by default it's projectile-find-file). If you want to use
;; something else alter the value of projectile-switch-project-action:
;; (setq projectile-switch-project-action 'projectile-dired)
