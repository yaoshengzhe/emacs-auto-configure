(add-to-list 'load-path "~/.emacs.d/multi-term")

(setq multi-term-program "/usr/bin/zsh")
(require 'multi-term)

(add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))
