;;(load-library "auctex/config.el")
;;(load-library "highlight-tail/config.el")
;;(load-library "layout-restore/config.el")
;;(load-library "muse/config.el")

(defun lazy-require (ext mode)
  (add-hook
   'find-file-hook
   `(lambda ()
      (when (and (stringp buffer-file-name)
                 (string-match (concat "\\." ,ext "\\'") buffer-file-name))
        (require (quote ,mode))
        (,mode)))))

(if window-system
    (progn
      (load-library "tabbar/config.el")
      ))
(load-library "graphviz-dot-mode/config.el")
(load-library "ruby-mode/config.el")
(load-library "color-theme/config.el")
(load-library "color-theme-maker/config.el")
(load-library "basic/config.el")
(load-library "coffee-mode/config.el")
(load-library "yasnippet/config.el")
(load-library "auto-complete/config.el")
(load-library "auto-complete+yasnippet/config.el")
(load-library "erlang-mode/config.el")
(load-library "template/config.el")
(load-library "rainbow-mode/config.el")
(load-library "scala-mode/config.el")
(load-library "zencoding-mode/config.el")
(load-library "pretty-symbol/config.el")
(load-library "markdown-mode/config.el")
(load-library "white-space/config.el")
(load-library "haskell-mode/config.el")
(load-library "puppet-mode/config.el")
(load-library "ess-mode/config.el")
(load-library "paredit/config.el")
(load-library "js2-mode/config.el")

;; following modules will be loaded as needed (aka lazy)
(load-library "clojure-mode/config.el")
(load-library "groovy-mode/config.el")
