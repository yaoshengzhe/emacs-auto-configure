(load-library "~/.emacs.d/slime/config.el")
(load-library "~/.emacs.d/popel/config.el")
(load-library "~/.emacs.d/auto-complete/auto-complete.el")
(load-library "~/.emacs.d/auto-complete/auto-complete-config.el")

(setq inferior-lisp-program (executable-find "sbcl"))
(require 'slime-autoloads)
(require 'auto-complete)
(require 'auto-complete-config)
