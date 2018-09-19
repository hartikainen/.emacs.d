(defun how-many-region (begin end regexp &optional interactive)
  "Print number of non-trivial matches for REGEXP in region.
   Non-interactive arguments are Begin End Regexp"
  (interactive "r\nsHow many matches for (regexp): \np")
  (let ((count 0) opoint)
    (save-excursion
      (setq end (or end (point-max)))
      (goto-char (or begin (point)))
      (while (and (< (setq opoint (point)) end)
                  (re-search-forward regexp end t))
        (if (= opoint (point))
            (forward-char 1)
          (setq count (1+ count))))
      (if interactive (message "%d occurrences" count))
      count)))

(defun infer-indentation-style ()
  ;; if our source file uses tabs, we use tabs, if spaces spaces, and if
  ;; neither, we use the current indent-tabs-mode
  (let ((space-count (how-many-region (point-min) (point-max) "^  "))
        (tab-count (how-many-region (point-min) (point-max) "^\t")))
    (if (> space-count tab-count) (setq indent-tabs-mode nil))
    (if (> tab-count space-count) (setq indent-tabs-mode t))))

(defun nosetests-all-virtualenv ()
  (interactive)
  (let ((nose-global-name
         (format
          "~/.virtualenvs/%s/bin/nosetests"
          (car
           (last
            (delete
             ""
             (split-string
              (nose-find-project-root)
              "/")))))))
    (nosetests-all)))

(add-hook 'python-mode-hook
          (lambda ()
            (push 'ac-source-yasnippet ac-sources)
            (setq-default ac-sources (push 'ac-source-yasnippet ac-sources))
            (setq indent-tabs-mode nil
                  tab-width 4
                  python-indent-offset 4
                  python-indent-guess-indent-offset t)
            (infer-indentation-style)
            (local-set-key (kbd "C-c t a") 'nosetests-all)
            (local-set-key (kbd "C-c t m") 'nosetests-module)
            (local-set-key (kbd "C-c t s") 'nosetests-one)
            (local-set-key (kbd "C-c C-c") 'compile)))

(setq auto-mode-alist (cons '("\\.pyx$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pxd$" . python-mode) auto-mode-alist))
