(add-to-list 'load-path "~/.emacs.d/clojure-mode")
(load "clojure-mode/clojure-mode")

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)