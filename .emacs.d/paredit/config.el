(add-to-list 'load-path "~/.emacs.d/paredit")
(load "paredit/paredit")

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
