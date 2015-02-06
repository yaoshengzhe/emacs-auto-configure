(add-to-list 'load-path "~/.emacs.d/highlight-chars")

(require 'highlight-chars)
(add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
