(add-to-list 'load-path "~/.emacs.d/protobuf-mode")
(require 'protobuf-mode)
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))
