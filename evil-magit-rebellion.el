;;; evil-magit-rebellion.el --- Key-bindings for evil magit rebels

;; Copyright © 2013-2014  Albert Krewinkel
;;
;; Author: Albert Krewinkel <albert+evil@zeitkraut.de>
;; Keywords: evil magit rebellion
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

;; Start to insert mode when editing commit messages
(evil-set-initial-state 'magit-log-edit-mode 'insert)

(evil-set-initial-state 'magit-mode 'motion)
(evil-define-key 'motion magit-mode-map
  "j" 'magit-goto-next-section
  "k" 'magit-goto-previous-section
  (kbd "TAB") 'magit-toggle-section
  (kbd "<backtab>") 'magit-expand-collapse-section
  "1" 'magit-show-level-1
  "2" 'magit-show-level-2
  "3" 'magit-show-level-3
  "4" 'magit-show-level-4
  "M-1" 'magit-show-level-1-all
  "M-2" 'magit-show-level-2-all
  "M-3" 'magit-show-level-3-all
  "M-4" 'magit-show-level-4-all
  "M-h" 'magit-show-only-files
  "M-H" 'magit-show-only-files-all
  "M-s" 'magit-show-level-4
  "M-S" 'magit-show-level-4-all
  "r" 'magit-refresh
  "R" 'magit-refresh-all
  "?" 'magit-describe-item
  "!" 'magit-key-mode-popup-running
  ";" 'magit-git-command
  (kbd "C-x 4 a") 'magit-add-change-log-entry-other-window
  (kbd "RET") 'magit-visit-item
  (kbd "\C-f") 'magit-show-item-or-scroll-up
  (kbd "\C-b") 'magit-show-item-or-scroll-down
  (kbd "\M-d") 'magit-copy-item-as-kill
  "H" 'magit-rebase-step
  "c" 'magit-key-mode-popup-committing
  "t" 'magit-key-mode-popup-tagging
  "h" 'magit-key-mode-popup-rewriting
  "P" 'magit-key-mode-popup-pushing
  "b" 'magit-key-mode-popup-branching
  "B" 'magit-key-mode-popup-bisecting
  "F" 'magit-key-mode-popup-pulling
  "f" 'magit-key-mode-popup-fetching
  "l" 'magit-key-mode-popup-logging
  "$" 'magit-display-process
  "E" 'magit-interactive-rebase
  "e" 'magit-ediff
  "w" 'magit-wazzup
  "q" 'magit-quit-window
  "m" 'magit-key-mode-popup-merging
  "x" 'magit-reset-head
  "v" 'magit-revert-item
  "a" 'magit-apply-item
  "A" 'magit-cherry-pick-item
  "y" 'magit-diff-working-tree
  "Y" 'magit-diff
  "-" 'magit-diff-smaller-hunks
  "+" 'magit-diff-larger-hunks
  "0" 'magit-diff-default-hunks
  "gg" 'evil-goto-first-line
  "G" 'evil-goto-line
  "n" 'evil-search-next
  "N" 'evil-search-previous
  ":" 'evil-ex
  "/" 'evil-search-forward
  "?" 'evil-search-backward)

(evil-set-initial-state 'magit-commit-mode 'motion)
(evil-define-key 'motion magit-commit-mode-map
  "\C-c\C-b" 'magit-show-commit-backward
  "\C-c\C-f" 'magit-show-commit-forward)

(evil-set-initial-state 'magit-status-mode 'motion)
(evil-define-key 'motion magit-status-mode-map
  "s" 'magit-stage-item
  "S" 'magit-stage-all
  "u" 'magit-unstage-item
  "U" 'magit-unstage-all
  "i" 'magit-ignore-item
  "I" 'magit-ignore-item-locally
  "." 'magit-mark-item
  "=" 'magit-diff-with-mark
  "d" 'magit-discard-item
  "C" 'magit-add-log
  "X" 'magit-reset-working-tree
  "z" 'magit-key-mode-popup-stashing)

(evil-set-initial-state 'magit-log-mode 'motion)
(evil-define-key 'motion magit-log-mode-map
  "." 'magit-mark-item
  "=" 'magit-diff-with-mark
  "e" 'magit-log-show-more-entries)

(evil-set-initial-state 'magit-wassup-mode 'motion)
(evil-define-key 'motion magit-wazzup-mode-map
  "." 'magit-mark-item
  "=" 'magit-diff-with-mark
  "i" 'magit-ignore-item)

(evil-set-initial-state 'magit-show-branches-mode 'motion)
(evil-define-key 'motion magit-show-branches-mode-map
  "d" 'magit-remove-branch
  "D" 'magit-remove-branch-in-remote-repo
  "v" 'magit-show-branches
  "T" 'magit-change-what-branch-tracks)


;; (evil-define-key 'normal magit-mode-map
;;   (kbd "<RET>") 'magit-visit-item
;;   (kbd "C-w") 'magit-copy-item-as-kill
;;   (kbd "\\t") 'magit-toggle-section
;;   "\C-b" 'magit-show-item-or-scroll-down
;;   "\C-f" 'magit-show-item-or-scroll-up
;;   "!" 'magit-key-mode-popup-running
;;   "$" 'magit-display-process
;;   "+" 'magit-diff-larger-hunks
;;   "-" 'magit-diff-smaller-hunks
;;   "." 'magit-mark-item
;;   ",0" 'magit-diff-default-hunks
;;   ",g" 'magit-refresh
;;   ",H" 'magit-show-level-1
;;   ",h" 'magit-show-level-2
;;   ",s" 'magit-show-level-3
;;   ",z" 'magit-key-mode-popup-stashing
;;   ",S" 'magit-show-level-4
;;   ",:" 'magit-git-command
;;   "=" 'magit-diff-with-mark
;;   "a" 'magit-apply-item
;;   "A" 'magit-cherry-pick-item
;;   "c" 'magit-log-edit
;;   "C" 'magit-add-log
;;   "d" 'magit-diff-working-tree
;;   "D" 'magit-discard-item
;;   "E" 'magit-interactive-rebase
;;   "I" 'magit-ignore-item-locally
;;   "J" 'next-line
;;   "K" 'previous-line
;;   "R" 'magit-refresh-all
;;   "S" 'magit-stage-all
;;   "U" 'magit-unstage-all
;;   "V1" 'magit-show-level-1
;;   "V2" 'magit-show-level-2
;;   "V3" 'magit-show-level-3
;;   "V4" 'magit-show-level-4
;;   "X" 'magit-reset-working-tree
;;   "e" 'magit-ediff
;;   "gb" 'magit-key-mode-popup-branching
;;   "gB" 'magit-key-mode-popup-bisecting
;;   "gD" 'magit-diff
;;   "gf" 'magit-key-mode-popup-fetching
;;   "gF" 'magit-key-mode-popup-pulling
;;   "gl" 'magit-key-mode-popup-logging
;;   "gm" 'magit-key-mode-popup-merging
;;   "gP" 'magit-key-mode-popup-pushing
;;   "gR" 'magit-rebase-step
;;   "gr" 'magit-key-mode-popup-rewriting
;;   "gt" 'magit-key-mode-popup-tagging
;;   "g?" 'magit-describe-item
;;   "i" 'magit-ignore-item
;;   "j" 'magit-goto-next-section
;;   "k" 'magit-goto-previous-section
;;   "q" 'magit-quit-window
;;   "r" 'magit-refresh
;;   "s" 'magit-stage-item
;;   "u" 'magit-unstage-item
;;   "v" 'magit-revert-item
;;   "w" 'magit-wazzup
;;   "x" 'magit-reset-head)

(provide 'evil-magit-rebellion)
