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

;; Regular expression
;; http://php.net/manual/en/ref.regex.php
;; file:///usr/share/doc/php-doc/html/ref.regex.html

(define-skeleton php-ereg
  "Insert an ereg statement"
  ""
  '(setq regexp (skeleton-read "Regexp? "))
  '(setq string (skeleton-read "String? "))
  > "ereg(" regexp ", " string ");"
)

(define-skeleton php-ereg_replace
  "Insert an eregi_replace statement"
  ""
  '(setq pattern (skeleton-read "Pattern? "))
  '(setq replacement (skeleton-read "Replacement? "))
  '(setq string (skeleton-read "String? "))
  > "ereg_replace(" pattern ", " replacement ", " string ");"
)

(define-skeleton php-eregi
  "Insert an eregi statement"
  ""
  '(setq regexp (skeleton-read "Regexp? "))
  '(setq string (skeleton-read "String? "))
  > "ereg(" regexp ", " string ");"
)

(define-skeleton php-eregi_replace
  "Insert an eregi_replace statement"
  ""
  '(setq pattern (skeleton-read "Pattern? "))
  '(setq replacement (skeleton-read "Replacement? "))
  '(setq string (skeleton-read "String? "))
  > "eregi_replace(" pattern ", " replacement ", " string ");"
)
