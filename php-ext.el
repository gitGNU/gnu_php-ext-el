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

;; To install php-ext.el:
;; You can add (load "path/php-ext/php-ext.el") to your .emacs

;; Description:
;; Php ext is some skeleton templates for extend php-mode

;; Math functions

(load (concat default-directory "php-math.el"))

;; Control Structures

(load (concat default-directory "php-control-structures.el"))

;; Classes Functions

(load (concat default-directory "php-classobj.el"))

;; Exceptions

(load (concat default-directory "php-exceptions.el"))

;; Handling strings

(load (concat default-directory "php-strings.el"))

;; Regular expression

(load (concat default-directory "php-regex.el"))

;; Handling Variables
;; http://php.net/manual/en/ref.var.php
;; file:///usr/share/doc/php-doc/html/ref.var.html
 
(load (concat default-directory "php-var.el"))


;; DOM 
;; More see file:///usr/share/doc/php-doc/html/book.dom.html

(load (concat default-directory "php-dom.el"))

;; XML Parser
;; More see file:///usr/share/doc/php-doc/html/function.xml-parse-into-struct.html

(load (concat default-directory "php-xmlparser.el"))

;; XML Reader
;; More see file:///usr/share/doc/php-doc/html/book.xmlreader.html

(load (concat default-directory "php-xmlreader.el"))

;; Crack Functions

(load (concat default-directory "php-crack.el"))

;; Dio Functions

(load (concat default-directory "php-dio.el"))

;; Filesystems functions
;; file:///usr/share/doc/php-doc/html/ref.filesystem.html


;; Another functions

(define-skeleton php-function
  "Insert a function statement."
  ""
  '(setq function (skeleton-read "Function name? ")) \n
  '(setq argument (skeleton-read "Argument? ")) \n
  > "function " function "(" argument 
  ( "Another argument? %s: "
    > ", " str )
  > ") {" \n
  _ \n
  > "}"
)

(define-skeleton php-define
  "Insert a define statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  '(setq value (skeleton-read "Value? "))
  "define(\"" variable "\",\"" value "\");")

(define-skeleton php-chr
  "Insert a chr statement"
  ""
  '(setq chr (skeleton-read "Char? "))
  "chr(" chr ");"
)
