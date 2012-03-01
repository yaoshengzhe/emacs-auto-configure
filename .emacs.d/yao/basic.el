(set-default-font "-apple-bitstream vera sans mono-medium-r-normal--14-120-72-72-m-120-iso10646-1")

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

;; Disatble Tool Bar
(if window-system
    (tool-bar-mode nil))

;; Share system clipboard 
(set-clipboard-coding-system 'ctext)

;; Distable Auto Backup
(setq-default make-backup-files nil)

;; What does this mean ? hmm, let me see ...
(setq x-select-enable-clipboard t)

;; Default mode, hmm, tex-mode is okay
;; (setq default-major-mode 'tex-mode)

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

 ;;; integrate ido with artist-mode
   (defun artist-ido-select-operation (type)
     "Use ido to select a drawing operation in artist-mode"
     (interactive (list (ido-completing-read "Drawing operation: " 
                                             (list "Pen" "Pen Line" "line" "straight line" "rectangle" 
                                                   "square" "poly-line" "straight poly-line" "ellipse" 
                                                   "circle" "text see-thru" "text-overwrite" "spray-can" 
                                                   "erase char" "erase rectangle" "vaporize line" "vaporize lines" 
                                                   "cut rectangle" "cut square" "copy rectangle" "copy square" 
                                                   "paste" "flood-fill"))))
     (artist-select-operation type))
   (defun artist-ido-select-settings (type)
     "Use ido to select a setting to change in artist-mode"
     (interactive (list (ido-completing-read "Setting: " 
                                             (list "Set Fill" "Set Line" "Set Erase" "Spray-size" "Spray-chars" 
                                                   "Rubber-banding" "Trimming" "Borders"))))
     (if (equal type "Spray-size") 
       (artist-select-operation "spray set size")
       (call-interactively (artist-fc-get-fn-from-symbol 
			    (cdr (assoc type '(("Set Fill" . set-fill)
					       ("Set Line" . set-line)
					       ("Set Erase" . set-erase)
					       ("Rubber-banding" . rubber-band)
					       ("Trimming" . trimming)
					       ("Borders" . borders)
					       ("Spray-chars" . spray-chars))))))))
   (add-hook 'artist-mode-init-hook 
	     (lambda ()
	       (define-key artist-mode-map (kbd "C-c C-a C-o") 'artist-ido-select-operation)
	       (define-key artist-mode-map (kbd "C-c C-a C-c") 'artist-ido-select-settings)))
