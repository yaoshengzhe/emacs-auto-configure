(setq load-path (append load-path (list (concat EMACS_LIBRARY "/color-theme"))))

(setq load-path (append load-path 
			(list 
			 (concat EMACS_LIBRARY "/color-theme/themes/"))))

(load-library (concat EMACS_LIBRARY "/color-theme/color-theme.el"))

(require 'color-theme)
(color-theme-initialize)
(color-theme-gray30)


