(add-to-list 'load-path "~/.emacs.d/graphviz-dot-mode")

;; set indent width to two spaces
(setq graphviz-dot-indent-width 2)

;; don't start new line when semi colon is entered
(setq graphviz-dot-auto-indent-on-semi nil)

(load-library "graphviz-dot-mode/graphviz-dot-mode-autoloads.el")
