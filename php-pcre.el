;; Copyright (C) 2015  David Arroyo Menéndez

;; Author: David Arroyo Menéndez <davidam@gnu.org>
;; Maintainer: David Arroyo Menéndez <davidam@gnu.org>

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, 
;; Boston, MA 02110-1301 USA,

;; file:///usr/share/doc/php-doc/html/ref.pcre.html

(define-skeleton php-preg_filter
  "Insert a preg_filter statement. preg_filter is identical to preg_replace except it only returns the (possibly transformed) subjects where there was a match."
  ""
  '(setq pattern (skeleton-read "Pattern? "))
  '(setq replacement (skeleton-read "Replacement? "))
  '(setq subject (skeleton-read "Subject? "))
  > "preg_filter(" pattern ", " replacement ", " subject ");" \n)

(define-skeleton php-preg_grep
  "Insert a preg_grep statement. preg_grep return array entries that match the pattern."
  ""
  '(setq pattern (skeleton-read "Pattern? "))
  '(setq input (skeleton-read "Input? "))
  > "preg_grep(" pattern ", " replacement ");" \n)

(define-skeleton php-preg_last_error
  "Insert a preg_last_error statement. Returns the error code of the last PCRE regex execution"
  ""
  > "preg_last_error();" \n)


