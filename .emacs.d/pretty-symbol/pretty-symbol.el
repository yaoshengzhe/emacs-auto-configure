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
		      ('left-triangle     #x22b2)       ;; ⊲
                      ('right-triangle    #x22b3)       ;; ⊳ 
		      ('left-arrow        #x2190)       ;; ←
                      ('up-arrow          #x2191)       ;; ↑               
                      ('right-arrow       #x2192)       ;; → 
                      ('down-arrow        #x2193)       ;; ↓             
                      ('left-double-arrow #x21d0)       ;; ⇐
		      ('right-fat-arrow   #x21d2)       ;; ⇒
		      ('not-equal         #x2260)       ;; ≠
                      ('identical         #x2261)       ;; ≡
                      ('not-identical     #x2262)       ;; ≢
                      ('much-less-than    #x226a)       ;; ≪
                      ('much-greater-than #x226b)       ;; ≫
                      ('less-or-equal     #x2264)       ;; ≤
                      ('greater-or-equal  #x2265)       ;; ≥
                      ('logical-and       #x2227)       ;; ∧
                      ('logical-or        #x2228)       ;; ∨
                      ('logical-neg       #x00ac)       ;; ¬
                      ('nil               #x2205)       ;; ∅
                      ('d-exclamation     #X203C)       ;; ‼
                      ('for-all           #x2200)       ;; ∀
                      ('there-exists      #x2203)       ;; ∃
                      ('element-of        #x2208)       ;; ∈
                      ('square-root       #X221A)       ;; √
                      ('squared           #x00b2)       ;; ²
                      ('cubed             #x00b3)       ;; ³
                      ('lambda            #x03bb)       ;; λ 
                      ('alpha             #x03b1)       ;; α
                      ('beta              #x03b2)       ;; β
                      ('gamma             #x03b3)       ;; γ
                      ('delta             #x03b4)       ;; δ
)))   

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

;; python-mode

(defun python-unicode ()
  (interactive)
  (substitute-patterns-with-unicode
   (list 
	 (cons "\\s-\\(for\\)\\s-"    'for-all)
	 (cons "\\s-\\(is\\)\\s-"     'identical)
	 (cons "\\s-\\(and\\)\\s-"    'logical-and)
	 (cons "\\s-\\(or\\)\\s-"     'logical-or)
	 (cons "\\<\\(math.sqrt\\)\\>"   'square-root)
	 (cons "\\s-\\(not\\)\\s-"    'logical-neg)
	 (cons "\\s-\\(**\\s-2\\)\\s-"          'squared)
	 (cons "\\s-\\(**\\s-3\\)\\s-"          'cubed)
	 (cons "\\<\\(>=\\)\\>"     'greater-or-equal)
	 (cons "\\<\\(<=\\)\\>"     'less-or-equal)
	 (cons "\\s-\\(lambda\\)\\s-" 'lambda)
	 (cons "\\s-\\(in\\)\\s-"     'element-of)
	 (cons "\\<\\(None\\)\\>"   'nil)
)))

(add-hook 'python-mode-hook 'python-unicode)


;; ruby-mode
(defun ruby-unicode ()
  (interactive)
  (substitute-patterns-with-unicode
   (list 
	 (cons "\\s-\\(for\\)\\s-"    'for-all)
	 (cons "\\s-\\(and\\)\\s-"    'logical-and)
	 (cons "\\s-\\(or\\)\\s-"     'logical-or)
	 (cons "\\<\\(Math.sqrt\\)\\>"   'square-root)
	 (cons "\\s-\\(not\\)\\s-"    'logical-neg)
	 (cons "\\<\\(>=\\)\\>"     'greater-or-equal)
	 (cons "\\<\\(<=\\)\\>"     'less-or-equal)
	 (cons "\\s-\\(lambda\\)\\s-" 'lambda)
	 (cons "\\s-\\(in\\)\\s-"     'element-of)
	 (cons "\\<\\(nil\\)\\>"   'nil)
)))

(add-hook 'ruby-mode-hook 'ruby-unicode)

(provide 'pretty-symbol)

(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; pretty-symbol.el ends here
