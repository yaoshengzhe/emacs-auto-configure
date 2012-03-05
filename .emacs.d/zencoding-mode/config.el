(load-library (concat EMACS_LIBRARY "/zencoding-mode/zencoding-mode.el"))

(require 'zencoding-mode)

(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes