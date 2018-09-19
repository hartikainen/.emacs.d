(require 'org)

(setq org-directory "~/my-notes/")

(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o l") 'org-store-link)
(global-set-key (kbd "C-c o t") 'org-todo-list)

(defun capture-report-date-file (path)
  (let ((name (read-string "Filename: ")))
    (expand-file-name (format "%s-%s.org"
                              (format-time-string "%Y-%m-%d")
                              name) path)))

(setq org-blank-before-new-entry
      '((heading . always)
       (plain-list-item . always)))

(setq org-capture-templates
 '(("n" "Note" entry
    (file (capture-report-date-file  org-directory))
    "* %?Notes from %U\n\n  %i\n %a")
   ("t" "Todo" entry (file+headline "~/my-notes/todos.org" "Tasks")
    "* TODO %?\n\n  %i" :prepend t)
   ("e" "Experiment" entry (file+headline "~/my-notes/experiments.org" "Experiments")
    "* EXPERIMENT %?\n  %i\n\n\n" :prepend t)
   ("j" "Journal" entry (file+olp+datetree "~/my-notes/journals.org")
    "* %?\nEntered on %U\n  %i\n  %a" :prepend t)))

(setq org-log-done t)
(setq org-startup-folded nil)
