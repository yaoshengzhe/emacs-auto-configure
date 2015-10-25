(add-to-list 'load-path "~/.emacs.d/go-mode")

(require 'go-mode-autoloads)

(load-file "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")

(add-hook 'go-mode-hook
          (lambda ()
            (setq gofmt-command "goimports")
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
                        (setq indent-tabs-mode 1)))
