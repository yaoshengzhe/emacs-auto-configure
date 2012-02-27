 (set-default-font "-apple-bitstream vera sans mono-medium-r-normal--14-120-72-72-m-120-iso10646-1")

(setq visible-bell nil)

;; Distable Start Menu
(setq inhibit-startup-message t)

;; Disable GNU Logo
(setq gnus-inhibit-startup-message t)

;; Reset all "yes or no" question to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight marked region
(transient-mark-mode t)

;; Show column number
(column-number-mode t)

;; Highlight matched paren
(show-paren-mode t)

;; Disatble Toocolol Bar
(if window-system
    (tool-bar-mode nil))

;; Share system clipboard 
(set-clipboard-coding-system 'ctext)

;; Distable Auto Backup
(setq-default make-backup-files nil)

;; What does this mean ? hmm, let me see ...
(setq x-select-enable-clipboard t)

;; Default mode, hmm, tex-mode is okay

;; What does this mean ? hmm, let me see ...
(auto-image-file-mode)

;; What does this mean ? hmm, let me see ...
(ansi-color-for-comint-mode-on)

;; 80 column per line
(setq fill-column 80)

(setq auto-mode-alist
      (cons '("\\.h$" . c++-mode)
	    auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.h$" . c-mode)
	    auto-mode-alist))


(setq truncate-partial-width-windows nil)
(setq overflow-newline-into-fringe t)

;;(setq ispell-program-name "aspell")
;;(setq ispell-list-command "list")




















