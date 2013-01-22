;;; color-theme-syao.el --- 

;; Copyright 2012 yao
;;
;; Author: yao@Shengzhes-MacBook-Pro.local
;; Version: $Id: color-theme-syao.el,v 0.0 2012/10/22 05:39:56 yao Exp $
;; Keywords: 
;; X-URL: not distributed yet

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; 

;; Put this file into your load-path and the following into your ~/.emacs:
;;   (require 'color-theme-syao)

;;; Code:

(defun color-theme-syao ()
  (interactive)
  (color-theme-install
   '(color-theme-syao
      ((background-color . "#1c1c1c")
      (background-mode . light)
      (border-color . "#1f1f1f")
      (cursor-color . "#fce94f")
      (foreground-color . "#ffffff")
      (mouse-color . "black"))
     (fringe ((t (:background "#1f1f1f"))))
     (mode-line ((t (:foreground "#c7c7c7" :background "#0d0d0d"))))
     (region ((t (:background "#15457a"))))
     (font-lock-builtin-face ((t (:foreground "#eb8d24"))))
     (font-lock-comment-face ((t (:foreground "#4a4a4a"))))
     (font-lock-function-name-face ((t (:foreground "#d7880f"))))
     (font-lock-keyword-face ((t (:foreground "#c81e2f"))))
     (font-lock-string-face ((t (:foreground "#dabf3e"))))
     (font-lock-type-face ((t (:foreground"#afd813"))))
     (font-lock-constant-face ((t (:foreground "#2b81ca"))))
     (font-lock-variable-name-face ((t (:foreground "#2ac615"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (font-lock-warning-face ((t (:foreground "red" :bold t))))
     )))

(provide 'color-theme-syao)
(eval-when-compile
  (require 'cl))


;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; color-theme-syao.el ends here
