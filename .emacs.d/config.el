;;(load-library "auctex/config.el")
;;(load-library "highlight-tail/config.el")
;;(load-library "layout-restore/config.el")
;;(load-library "muse/config.el")



(if window-system
    (load-library "color-theme/config.el"))

(if window-system
    (load-library "tabbar/config.el"))

(load-library "basic/config.el")
(load-library "auto-complete/config.el")
(load-library "template/config.el")
(load-library "rainbow-mode/config.el")
(if window-system
    (load-library "python-mode/config.el"))
(load-library "zencoding-mode/config.el")