(load-library (concat EMACS_LIBRARY "/basic/basic.el"))

;; Add XeLaTeX support
(add-hook 'LaTeX-mode-hook 
	  (lambda() (add-to-list 
		     'TeX-command-list 
		     '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
	    (setq TeX-command-default "XeLaTeX")
	    (setq TeX-save-query  nil )
	    (setq TeX-show-compilation t)
	    )
	  )