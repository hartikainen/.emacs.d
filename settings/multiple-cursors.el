(require 'multiple-cursors)

;; When you have an active region that spans multiple lines, the following will add a cursor to each line:
(global-set-key (kbd "C-c C-m") 'mc/edit-lines)

;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer:
(global-set-key (kbd "C-c C-f") 'mc/mark-next-like-this-word)
(global-set-key (kbd "C-c C-b") 'mc/mark-previous-like-this-word)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)

;; TODO
;; mc/mark-next-like-this-word
