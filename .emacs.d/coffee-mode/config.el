(load-library "coffee-mode/coffee-mode.el")

(require 'coffee-mode)

(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 4))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))