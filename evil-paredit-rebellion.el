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

(define-leader-key 'local-leader paredit-mode-map ";" 'paredit-semicolon)
(define-leader-key 'local-leader paredit-mode-map "b" 'eval-current-buffer)
(define-leader-key 'local-leader paredit-mode-map "d" 'eval-defun)
(define-leader-key 'local-leader paredit-mode-map "e" 'eval-last-sexp)
(define-leader-key 'local-leader paredit-mode-map "r" 'eval-region)
(define-leader-key 'local-leader paredit-mode-map "v" 'eval-expression)
(define-leader-key 'local-leader paredit-mode-map "w(" 'paredit-wrap-round)
(define-leader-key 'local-leader paredit-mode-map "w[" 'paredit-wrap-square)
(define-leader-key 'local-leader paredit-mode-map "w{" 'paredit-wrap-curly)
(define-leader-key 'local-leader paredit-mode-map "w<" 'paredit-wrap-angled)
(define-leader-key 'local-leader paredit-mode-map "J" 'paredit-join-sexps)
(define-leader-key 'local-leader paredit-mode-map "O" 'paredit-split-sexp)
(define-leader-key 'local-leader paredit-mode-map "S" 'paredit-splice-sexp)
(define-leader-key 'local-leader paredit-mode-map "W" 'paredit-wrap-sexp)

(evil-define-key 'normal paredit-mode-map
  "D"   'paredit-kill
  ;; "dd"  'paredit-kill-sexp-on-line
  "gh"  'paredit-backward
  "gj"  'paredit-forward-up
  "gk"  'paredit-backward-up
  "gl"  'paredit-forward
  "x"   'paredit-forward-delete
  "X"   'paredit-backward-delete)

(provide 'evil-paredit-rebellion)
;;; evil-paredit-rebellion.el ends here
