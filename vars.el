(setq backup-directory-alist (list (cons "." backup-dir))
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

      linum-format (lambda (line)
		     (propertize (format
				  (let ((w (length (number-to-string
						    (count-lines (point-min) (point-max))))))
				    (concat "%" (number-to-string w) "d "))
				  line)
				 'face 'linum))
      )
