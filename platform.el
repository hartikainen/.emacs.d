(let ((home-dir (getenv "HOME")))
  (cond
   ;; ubuntu useless at the moment
   ((equal home-dir "/u/59/hartikk1/unix")
    ;;(equal home-dir "/home/kristian")
    (load-file "~/.emacs.d/platform/ubuntu.el"))
   ;; mac
   ((equal home-dir "/Users/Kristian")
    (load-file "~/.emacs.d/platform/mac.el"))
   ;; windows... useless at the moment (probably always)
   ;; (t
   ;;  (load-file "~/.emacs.d/platform/windows.el"))
   ))

