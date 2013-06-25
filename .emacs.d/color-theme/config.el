(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-theme/themes")
(add-to-list 'load-path "~/.emacs.d/color-theme/my-themes")
(load-library "color-theme/color-theme.el")

(require 'color-theme)
(color-theme-initialize)

(require 'color-theme-mac-classic)
(require 'color-theme-me)
(require 'color-theme-tm)
(require 'color-theme-syao)

(color-theme-tm)

