(add-to-list 'load-path "~/.emacs.d/muse/lisp")

;;(load-library "~/.emacs.d/muse/lisp/muse.el")

(require 'muse-mode)	; load authoring mode
(require 'muse-html)	; load publishing styles I use 
(require 'muse-latex)
(require 'muse-texinfo)
(require 'muse-docbook)
(require 'muse-project) ; publish files in projects
