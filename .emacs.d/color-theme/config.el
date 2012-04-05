(setq load-path (append load-path (list (concat EMACS_LIBRARY "/color-theme"))))

(setq load-path (append load-path 
			(list 
			 (concat EMACS_LIBRARY "/color-theme/themes/"))))

(setq load-path (append load-path 
			(list 
			 (concat EMACS_LIBRARY "/color-theme/my-themes"))))

(load-library (concat EMACS_LIBRARY "/color-theme/color-theme.el"))

(require 'color-theme)
(color-theme-initialize)

(require 'color-theme-mac-classic)
(color-theme-mac-classic)


