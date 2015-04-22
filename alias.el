(define-key global-map [(right)] 'windmove-right)
(define-key global-map [(left)] 'windmove-left)
(define-key global-map [(down)] 'windmove-down)
(define-key global-map [(up)] 'windmove-up)

(define-key global-map "\C-cg" 'magit-status)
(global-set-key (kbd "C-a") 'beginning-or-indentation)
