(require 'smartrep)
(require 'multiple-cursors)

;; When you have an active region that spans multiple lines, the following will add a cursor to each line:
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer:
(global-set-key (kbd "C-c m a") 'mc/mark-all-like-this)

(smartrep-define-key
    global-map "C-c m" '(("f" . 'mc/mark-next-like-this)
                         ("a" . 'mc/mark-all-like-this)))

(smartrep-define-key
    global-map "C-c m" '(("b" . 'mc/mark-previous-like-this)
                         ("a" . 'mc/mark-all-like-this)))
;; TODO
;; mc/mark-next-like-this-word
