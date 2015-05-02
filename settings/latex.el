(require 'auto-complete)
(require 'auto-complete-config)
(require 'ac-math)

(setq TeX-PDF-mode t)

;; do this if above doesn't work
;;(require 'tex)
;;(TeX-global-PDF-mode t)

(setq auto-mode-alist (cons '("\\.tex$" . latex-mode) auto-mode-alist))

(add-hook 'tex-mode-hook
	  '(lambda ()
	     (setq fill-column 80); where auto-fill should wrap
;;	     (turn-on-auto-fill)
	     (flyspell-mode)))

(add-hook 'LaTeX-mode-hook
	  '(lambda ()
	     (LaTeX-math-mode)
	     (turn-on-reftex)
	     (visual-line-mode)
	     (flyspell-mode)))

(setq reftex-plug-into-AUCTeX t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)


;; Autocomplete stuff, requires auto-complete, auto-complete-config and ac-math
(ac-config-default)

(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`

(defun ac-LaTeX-mode-setup () ; add ac-sources to default ac-sources
  (setq ac-sources
	(append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
		ac-sources))
  )
(add-hook 'LaTeX-mode-hook 'ac-LaTeX-mode-setup)
(global-auto-complete-mode t)

(setq ac-math-unicode-in-math-p t)
