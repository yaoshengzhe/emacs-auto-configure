(load-library "white-space/show-wspace.el")

(require 'show-wspace)

(add-hook 'font-lock-mode-hook 'show-ws-highlight-hard-spaces)
(add-hook 'font-lock-mode-hook 'show-ws-highlight-tabs)
(add-hook 'font-lock-mode-hook 'show-ws-highlight-trailing-whitespace)                                             
