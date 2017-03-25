(require 'web-mode)
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))


(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)


(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; The var web-mode-content-types-alist can be used to associate a file path with a content type
(setq web-mode-content-types-alist
  '(("jsx"  . "~code/statwing/cake-stats/app/assets/javascripts/*\\.js[x]?\\'")))

;; from John's stuff
(autoload 'javascript-mode "javascript" nil t)
(setq js-indent-level 2)

;;  generic web development stuff
(add-to-list 'auto-mode-alist '("\\.ejs$" . html-mode))
(setq coffee-tab-width 2)
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
