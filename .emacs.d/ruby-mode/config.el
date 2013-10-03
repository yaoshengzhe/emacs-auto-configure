(add-to-list 'load-path "~/.emacs.d/ruby-mode")

(load "ruby-mode/ruby-mode")

;; Load ruby mode when needed
(autoload 'ruby-mode "ruby-mode" "Ruby mode" t )
;; Assign .rb and .rake files to use ruby mode
(setq auto-mode-alist (cons '("\\.rb\\'" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake\\'" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Vagrantfile\\'" . ruby-mode) auto-mode-alist))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
;; Show syntax highlighting when in ruby mode
(add-hook 'ruby-mode-hook '(lambda () (font-lock-mode 1)))
