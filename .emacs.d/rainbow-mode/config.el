(load-library "rainbow-mode/rainbow-mode.el")

(require 'rainbow-mode)

(add-hook 'css-mode-hook '(lambda () (rainbow-mode 1)))