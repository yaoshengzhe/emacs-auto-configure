(setq auto-mode-alist
      (cons '("\\.h$" . c++-mode)
            auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.h$" . c-mode)
            auto-mode-alist))

(setq-default c-basic-offset 2)
