;;; evil-buffer-menu-rebellion.el --- Buffer menu key bindings for evil mode

;; Copyright © 2013-2014  Albert Krewinkel

;; Author: R. Haluk Öngör <rhalukongorATgmail.com>
;; Keywords: evil buffer menu rebellion

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

;;; Commentary:

;; Provides evil-mode compatible key bindings for buffer menu.

;;; Code:

(require 'evil)

(evil-set-initial-state 'Buffer-menu-mode 'motion)

(evil-define-key 'motion Buffer-menu-mode-map
  "g" (lookup-key evil-motion-state-map "g")
  "?" (lookup-key evil-motion-state-map "?")
  "n" (lookup-key evil-motion-state-map "n")
  "N" (lookup-key evil-motion-state-map "N")
  (kbd "<return>") 'Buffer-menu-this-window
  "o" 'Buffer-menu-this-window
  "C-o" 'Buffer-menu-other-window
  "M-o" 'Buffer-menu-switch-other-window
  "w" 'Buffer-menu-other-window
  "r" 'revert-buffer
)

(provide 'evil-buffer-menu-rebellion)
;;; evil-buffer-menu-rebellion.el ends here
