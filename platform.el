(let ((home-dir (getenv "HOME")))
  (cond
   ;; ubuntu useless at the moment
   ;; ((equal home-dir "/home/kristian")
   ;;  (load-file "~/.emacs.d/platform/ubuntu.el"))
   ;; mac
   ((equal home-dir "/Users/Kristian")
    (load-file "~/.emacs.d/platform/mac.el"))
   ;; windows... useless at the moment
   ;; (t
   ;;  (load-file "~/.emacs.d/platform/windows.el"))
   ))
