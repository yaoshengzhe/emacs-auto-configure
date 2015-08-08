(add-to-list 'load-path "~/.emacs.d/yasnippet")

(require 'yasnippet)

(setq yas-snippet-dirs
            '("~/.emacs.d/yasnippet/snippets"))   
(yas/global-mode 1)
