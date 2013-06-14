;;; evil-bbdb-rebellion.el --- Key-bindings for evil bbdb rebels

;; Copyright (C) 2013  Albert Krewinkel
;;
;; Author: Albert Krewinkel <tarleb@moltkeplatz.de>
;; Keywords: evil bbdb rebellion
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

(evil-define-key 'emacs bbdb-mode-map
  "\C-k"         'bbdb-delete-current-field-or-record
  "!"           'bbdb-search-invert-set
  "*"           'bbdb-apply-next-command-to-all-records
  "+"           'bbdb-append-records
  "-"           'negative-argument
  ";"           'bbdb-record-edit-notes
  "="           'delete-other-windows
  "/"           'bbdb
  "?"           'bbdb-mode-search-map   ; use "h" for help
  "A"           'bbdb-create
  "C"           'bbdb-changed
  "F"           'bbdb-ftp
  "O"           'bbdb-insert-new-field  ; instead of "C-o"
  "P"           'bbdb-print
  "S"           'bbdb-mode-search-map
  "T"           'bbdb-display-record-completely
  "W"           'bbdb-whois
  "a"           'bbdb-add-or-remove-mail-alias
  "b"           nil                     ; use "/" instead
  "c"           'bbdb-edit-current-field
  "d"           'bbdb-delete-current-field-or-record
  "e"           nil                     ; use "c" instead
  "f"           'bbdb-finger
  "h"           'bbdb-help              ; use "x" for other-window
  "i"           'bbdb-info
  "j"           'bbdb-next-record
  "k"           'bbdb-prev-record
  "m"           'bbdb-send-mail
  "n"           nil                     ; use "j" for next-record
  "o"           'bbdb-omit-record
  "p"           nil                     ; use "k" instead
  "q"           'bbdb-bury-buffer
  "r"           'bbdb-refile-record
  "s"           'bbdb-save-db
  "t"           'bbdb-toggle-records-display-layout
  "w"           'bbdb-www
  "x"           'other-window
  "<delete>"    'scroll-down
  "<mouse-3>"   'bbdb-menu

  "\C-x\C-s"     'bbdb-save-db
  "\C-x\C-t"     'bbdb-transpose-fields

  "M-d"         'bbdb-dial)

(evil-set-initial-state 'bbdb-mode 'emacs)

(provide 'evil-bbdb-rebellion)
