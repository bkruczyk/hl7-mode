;;; hl7-mode.el --- Major mode for editing HL7v2 messages

;; Copyright (C) 2015  Bartłomiej Kruczyk

;; Author: bkruczyk <bartlomiej.kruczyk@gmail.com>
;; Keywords: HL7
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/bkruczyk/hl7-mode

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Major mode for editing HL7v2 messages

;;; Code:

(defvar hl7-mode-font-lock-keywords
  '(("^\\(...\\)|" . 1)))

(define-derived-mode hl7-mode fundamental-mode "HL7"
  "Major mode for editing HL7v2 messages"
  (set (make-local-variable 'font-lock-defaults) '(hl7-mode-font-lock-keywords)))

(provide 'hl7-mode)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; hl7-mode.el ends here
