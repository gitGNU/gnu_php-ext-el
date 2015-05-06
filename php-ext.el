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

;; Handling strings

(load (concat default-directory "php-strings.el"))

;; Regular expression

(load (concat default-directory "php-regex.el"))

;; Handling Variables
;; http://php.net/manual/en/ref.var.php
;; file:///usr/share/doc/php-doc/html/ref.var.html
 
(load (concat default-directory "php-var.el"))

;; Exceptions

(define-skeleton php-try-catch
  "Insert a try catch statement"
  ""
  > "try {" \n
  _ \n
  > "} catch (" (skeleton-read "Exception? ") ") {" \n
  _ \n
  > "}" \n
)

(define-skeleton php-try-catch-finally
  "Insert a try catch statement"
  ""
  > "try {" \n
  _ \n
  > "} catch (" (skeleton-read "Exception? ") ") {" \n
  _ \n
  > "} finally {" \n
  _ \n
  > "}" \n
)


;; DOM 
;; More see file:///usr/share/doc/php-doc/html/book.dom.html

(define-skeleton php-domdocument
  "Insert a new domdocument object"
  ""
  > "$" (skeleton-read "Var? ") " = DOMDocument('1.0');" \n
)

(define-skeleton php-dom-appendChild
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->appendChild(" (skeleton-read "Child? ") ");" \n
)

(define-skeleton php-dom-createElement
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->createElement(" (skeleton-read "Element? ") ");" \n
)

(define-skeleton php-dom-createTextNode
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->createTextNode(" (skeleton-read "Text Node? ") ");" \n
)

(define-skeleton php-dom-setAttribute
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->setAttribute(" (skeleton-read "Attribute? ") ", " (skeleton-read "Value? ") ");" \n
)

(define-skeleton php-dom-saveXML
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->saveXML();" \n
)

;; XML Parser
;; More see /usr/share/doc/php-doc/html/function.xml-parse-into-struct.html


(define-skeleton php-utf8_decode
  "Insert a utf8_decode statement"
  ""
  > "utf8_decode(" (skeleton-read "An utf-8 string ") ");" \n
)

(define-skeleton php-utf8_encode
  "Insert a utf8_encode statement"
  ""
  > "utf8_encode(" (skeleton-read "An iso-8859-1 string ") ");" \n
)

(define-skeleton php-xml_error_string
  "Insert a xml_error_string statement"
  ""
  > "xml_error_string(" (skeleton-read "Code? ") ");" \n
)

(define-skeleton php-xml_get_current_byte_index
  "Insert a xml_get_current_byte_index"
  ""
  > "xml_get_current_byte_index(" (skeleton-read "Parser? ") ");" \n
)

(define-skeleton php-xml-get_current_column_number
  "Insert a xml_get_current_column_number"
  ""
  > "xml_get_current_column_number(" (skeleton-read "Parser? ") ");" \n
)

(define-skeleton php-xml-get_current_line_number
  "Insert a xml_get_current_line_number"
  ""
  > "xml_get_current_line_number(" (skeleton-read "Parser? ") ");" \n
)

(define-skeleton php-xml-get_error_code
  "Insert a xml_get_error_code"
  ""
  > "xml_get_error_code(" (skeleton-read "Parser? ") ");" \n
)

(define-skeleton php-xml_parse
  "Insert a xml_parse"
  ""
  > "xml_parse(" (skeleton-read "Parser? ") ", " 
  > (skeleton-read "Data? ") 
  > ("Is final? " ", " str) _ ");")  

(define-skeleton php-simplexml_load_file
  "Insert a new simple xml file object"
  ""
  > "$" (skeleton-read "Var? ") " = simplexml_load_file('" (skeleton-read "File path? ")  "');" \n
)

;; XML Reader

(define-skeleton php-xmlreader
  "Insert a new xmlreader object"
  ""
  > "$" (skeleton-read "Var? ") " = new XMLReader();" \n
)

(define-skeleton php-xmlreader-open
  "Insert a new xmlreader object"
  ""
  > (skeleton-read "Var? ") "->open(" (skeleton-read "File? ") ")" \n
)


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
