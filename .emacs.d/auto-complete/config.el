(load-library "~/.emacs.d/auto-complete/popup.el")
(load-library "~/.emacs.d/auto-complete/auto-complete.el")
(load-library "~/.emacs.d/auto-complete/auto-complete-config.el")

(require 'auto-complete)
(require 'auto-complete-config)

(require 'yasnippet)

(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))

(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources
							   'ac-source-filename)))

(global-auto-complete-mode t)

(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")
(define-key ac-completing-map "\M-n" 'ac-next)
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 1)
(setq ac-dwim t)
(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" nil)
