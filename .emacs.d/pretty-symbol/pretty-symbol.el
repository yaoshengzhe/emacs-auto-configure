;;; pretty-symbol.el --- 

;; Copyright 2012 Shengzhe Yao
;;
;; Author: syao@syao-ml.corp.qc
;; Version: $Id: pretty-symbol.el,v 0.0 2012/04/19 20:09:17 syao Exp $
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
;;   (require 'pretty-symbol)

;;; Code:

(defun unicode-symbol (name)
  "Translate a symbolic name for a Unicode character -- e.g., LEFT-ARROW
 or GREATER-THAN into an actual Unicode character code. "
  (decode-char 'ucs (case name
                      ('right-triangle #X22b3)
                      ('left-triangle #X22b2)
                      ('left-arrow 8592)
                      ('up-arrow 8593)
                      ('right-arrow 8594)
                      ('down-arrow 8595)
                      ('right-double-arrow 8658)
                      ('left-double-arrow 8656)
                      ('double-vertical-bar #X2551)
                      ('equal #X003d)
                      ('not-equal #X2260)
                      ('identical #X2261)
                      ('not-identical #X2262)
                      ('much-less-than #X226a)
                      ('much-greater-than #X226b)
                      ('less-than #X003c)
                      ('greater-than #X003e)
                      ('less-than-or-equal-to #X2264)
                      ('greater-than-or-equal-to #X2265)
                      ('logical-and #X2227)
                      ('logical-or #X2228)
                      ('logical-neg #X00AC)
                      ('nil #X2205)
                      ('horizontal-ellipsis #X2026)
                      ('double-exclamation #X203C)
                      ('prime #X2032)
                      ('double-prime #X2033)
                      ('for-all #X2200)
                      ('there-exists #X2203)
                      ('element-of #X2208)
                      ('square-root #X221A)
                      ('squared #X00B2)
                      ('cubed #X00B3)
                      ('lambda #X03BB) ;; 
                      ('alpha #X03B1)
                      ('beta #X03B2)
                      ('gamma #X03B3)
                      ('delta #X03B4))))

(defun substitute-pattern-with-unicode (pattern symbol)
  "Add a font lock hook to replace the matched part of PATTERN with the
Unicode symbol SYMBOL looked up with UNICODE-SYMBOL."
  (interactive)
  (font-lock-add-keywords
   nil `((,pattern
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(unicode-symbol symbol)
                                    'decompose-region)
                    nil))))))

(defun substitute-patterns-with-unicode (patterns)
  "Call SUBSTITUTE-PATTERN-WITH-UNICODE repeatedly."
  (mapcar #'(lambda (x)
              (substitute-pattern-with-unicode (car x)
                                               (cdr x)))
          patterns))

(defun python-unicode ()
  (interactive)
  (substitute-patterns-with-unicode
   (list 
	 (cons "\\<\\(for\\)\\>" 'for-all)
	 (cons "\\(==\\)" 'identical)
	 (cons "\\<\\(and\\)\\>" 'logical-and)
	 (cons "\\<\\(or\\)\\>" 'logical-or)
	 (cons "\\<\\(sqrt\\)\\>" 'square-root)
	 (cons "\\<\\(not\\)\\>" 'logical-neg)
	 (cons "\\(>=\\)" 'greater-than-or-equal-to)
	 (cons "\\(<=\\)" 'less-than-or-equal-to)
	 (cons "\\<\\(lambda\\)\\>" 'lambda)
	 (cons "\\<\\(in\\)\\>" 'element-of)
	 (cons "\\<\\(None\\)\\>" 'nil)
)))

(add-hook 'python-mode-hook 'python-unicode)
(provide 'pretty-symbol)

(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; pretty-symbol.el ends here
