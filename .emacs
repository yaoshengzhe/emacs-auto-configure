(setq EMACS_HOME "~/.emacs.d")
(setq EMACS_LIBRARY "~/.emacs.d")
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; Melpa
(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(load-library "~/.emacs.d/config.el")
