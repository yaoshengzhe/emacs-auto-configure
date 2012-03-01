(setq EMACS_HOME "$1/.emacs.d")
(setq EMACS_LIBRARY "$1/.emacs.d")
(add-to-list 'load-path (expand-file-name EMACS_HOME))
(load-library "config.el")