;; Functions, taken from John's emacs config, that seem useful

(defun save-window-layout () (interactive) (window-configuration-to-register ?z))
(defun load-window-layout () (interactive) (jump-to-register ?z))

(defun other-frame-1 ()
  "does previous frame"
       (interactive)
       (other-frame -1))

(defun other-window-1 ()
  "does previous window"
  (interactive)
  (other-window -1))
