(require 'org)

(setq org-directory "~/my-notes/")

(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o l") 'org-store-link)

(defun capture-report-date-file (path)
  (let ((name (read-string "Filename: ")))
    (expand-file-name (format "%s-%s.org"
                              (format-time-string "%Y-%m-%d")
                              name) path)))

(setq org-capture-templates
      '(("n" "Note" entry
         (file (capture-report-date-file  org-directory))
         "* %?Notes from %U\n\n  %i\n %a")))

(setq org-log-done t)
