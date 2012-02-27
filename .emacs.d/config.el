;;(load-library (concat EMACS_LIBRARY "/auctex/config.el"))
;;(load-library (concat EMACS_LIBRARY "/highlight-tail/config.el"))
;;(load-library (concat EMACS_LIBRARY "/layout-restore/config.el"))
;;(load-library (concat EMACS_LIBRARY "/muse/config.el"))



(if window-system
    (load-library (concat EMACS_LIBRARY "/color-theme/config.el")))
(if window-system
    (load-library (concat EMACS_LIBRARY "/tabbar/config.el")))

(load-library (concat EMACS_LIBRARY "/basic/config.el"))

(load-library (concat EMACS_LIBRARY "/auto-complete/config.el"))
(load-library (concat EMACS_LIBRARY "/template/config.el"))
(load-library (concat EMACS_LIBRARY "/zencoding-mode/config.el"))