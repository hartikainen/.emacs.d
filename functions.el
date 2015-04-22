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

(defun duplicate-line()
  "Duplicate the line under the cursor, just like C-S-d in Sublime Text"
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  )

(defun beginning-or-indentation (&optional n)
  "Move cursor to beginning of this line or to its indentation.
If at indentation position of this line, move to beginning of line.
If at beginning of line, move to beginning of previous line.
Else, move to indentation position of this line.

With arg N, move backward to the beginning of the Nth previous line.
Interactively, N is the prefix arg."
  (interactive "P")
  (let ((previous-point (point)))
    (back-to-indentation)
    (if (equal (point) previous-point) (move-beginning-of-line 1)))
  )
