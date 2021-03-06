(add-to-list 'load-path "~/.emacs.d/scala-mode")
(load-library "scala-mode/scala-mode-auto.el")
(add-hook 'scala-mode-hook
          '(lambda ()
             (yas/minor-mode-on)))

(setq auto-mode-alist
      (cons '("\\.sbt$" . sbt-mode)
            auto-mode-alist))

;; (setq yas/my-directory "~/.emacs.d/scala-mode/contrib/yasnippet/snippets")
;; (yas/load-directory yas/my-directory)
