(add-to-list 'load-path "~/.emacs.d/cedet")
(load "cedet/cedet-1.1/common/cedet")
(global-cedet-m3-minor-mode 1)
(global-ede-mode 1)
(semantic-load-enable-code-helpers)
(global-srecode-minor-mode 1)
