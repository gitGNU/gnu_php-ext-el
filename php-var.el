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

;; Variable handling functions
;; http://php.net/manual/en/ref.var.php
;; file:///usr/share/doc/php-doc/html/ref.var.html

(define-skeleton php-boolval
  "Insert a boolval statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  "boolval(" variable ");"
)
 
(define-skeleton php-empty
  "Insert an empty statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  "empty(" variable ");"
)

(define-skeleton php-var_dump
  "Insert a var_dump statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  > "var_dump(" variable 
  ( "Other variable? %s: "
   > ", " str )
  > ");"
)
