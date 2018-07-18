;;==============================================================================
;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
;;==============================================================================
(defvar autosave-dir
 (concat "~/.emacs.d/emacs_autosaves/" (user-login-name) "/"))

(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
   (if buffer-file-name
      (concat "#" (file-name-nondirectory buffer-file-name) "#")
    (expand-file-name
     (concat "#%" (buffer-name) "#")))))

;;==============================================================================
;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
;;==============================================================================
(defvar backup-dir (concat "~/.emacs.d/emacs_backups/" (user-login-name) "/"))

(menu-bar-mode 0)

(fset 'yes-or-no-p 'y-or-n-p)

;; (setq split-height-threshold 0)
;; (setq split-width-threshold nil)

(setq backup-directory-alist (list (cons "." backup-dir))
      tool-bar-mode nil
      scroll-bar-mode nil
      column-number-mode t
      comment-style 'indent
      mac-command-modifier 'meta
      mac-option-modifier 'super
      scroll-conservatively 10000
      show-paren-mode t
      show-paren-delay 0
      standard-indent 4
      delete-selection-mode t
      desktop-save-mode t
      )

(setq-default truncate-lines t
              indent-tabs-mode nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(show-paren-mode 1)
(delete-selection-mode 1)
(global-font-lock-mode 1)
