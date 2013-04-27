(add-to-list 'load-path "~/.emacs.d/erlang-mode")
(setq erlang-root-dir "/usr/local/otp")
(setq exec-path (cons "/usr/local/otp/bin" exec-path))
(require 'erlang-start)
