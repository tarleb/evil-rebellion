;;; evil-visual-rebellion.el --- Key-bindings for evil org-mode rebels

;; Copyright (C) 2013  Albert Krewinkel
;;
;; Author: Albert Krewinkel <tarleb@moltkeplatz.de>
;; Keywords: evil visual rebellion
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

;; Switch bindings for visual line and logical line movements.
(evil-define-key 'normal visual-line-mode-map
  "$"  'evil-end-of-visual-line
  "^"  'evil-beginning-of-visual-line
  "g$" 'evil-end-of-line
  "g^" 'evil-beginning-of-line
  "gj" 'evil-next-line
  "gk" 'evil-previous-line
  "j"  'evil-next-visual-line
  "k"  'evil-previous-visual-line)

(evil-scout-reset 'local-leader visual-line-mode-map)

(provide 'evil-visual-rebellion)
;;; evil-visual-rebellion.el ends here
