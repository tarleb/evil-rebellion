;;; evil-paredit-rebellion.el --- Key-bindings for evil org-mode rebels

;; Copyright (C) 2013  Albert Krewinkel
;;
;; Author: Albert Krewinkel <tarleb@moltkeplatz.de>
;; Keywords: evil paredit rebellion
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; This file is not part of GNU Emacs.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(require 'evil-macros)
(require 'evil)
(require 'evil-scout)

(evil-set-initial-state 'paredit-mode 'normal)

(let ((map (make-sparse-keymap)))
  (define-key map ";" 'paredit-semicolon)
  (define-key map "b" 'eval-current-buffer)
  (define-key map "d" 'eval-defun)
  (define-key map "e" 'eval-last-sexp)
  (define-key map "r" 'eval-region)
  (define-key map "v" 'eval-expression)
  (define-key map "w(" 'paredit-wrap-round)
  (define-key map "w[" 'paredit-wrap-square)
  (define-key map "w{" 'paredit-wrap-curly)
  (define-key map "w<" 'paredit-wrap-angled)
  (define-key map "J" 'paredit-join-sexps)
  (define-key map "O" 'paredit-split-sexp)
  (define-key map "s" 'paredit-splice-sexp)
  (define-key map "W" 'paredit-wrap-sexp)

  (defvar evil-local-leader-paredit-mode-map map
    "evil local-leader keymap for paredit mode."))

(evil-define-key 'normal paredit-mode-map
  "D"   'paredit-kill
  ;; "dd"  'paredit-kill-sexp-on-line
  "gh"  'paredit-backward
  "gj"  'paredit-forward-up
  "gk"  'paredit-backward-up
  "gl"  'paredit-forward
  "x"   'paredit-forward-delete
  "X"   'paredit-backward-delete)

(define-leader-key 'local-leader paredit-mode-map
  nil evil-local-leader-paredit-mode-map)

(provide 'evil-paredit-rebellion)
;;; evil-paredit-rebellion.el ends here
