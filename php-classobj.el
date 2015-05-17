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

;; Classes Functions
;; http://php.net/manual/en/ref.classobj.php
;; file:///usr/share/doc/php-doc/html/ref.classobj.html

(define-skeleton php-class
  "Insert a class statement."
  ""
  '(setq class (skeleton-read "Class name? ")) \n
  > "class " class \n
  > "{" \n
  ( "Variable? %s: "
    > "var " str ";" \n )
  ( "Function? %s: "
    > "function " str "(" ( "Parameter? %s:" str ", " ) ")" \n
    > "{ " \n
    _
    > "} " \n
    )
  > "}" \n
)

(define-skeleton php__autoload 
  "Insert a __autoload statement. Attempt to load undefined class"
  '(setq class (skeleton-read "Class: "))
  > "__autoload(" class ");" \n
)

(define-skeleton php-class_alias
  "Insert a class_alias statement. Creates an alias for a class"
  '(setq original (skeleton-read "Original: "))
  '(setq alias (skeleton-read "Alias: "))
  '(setq autoload (skeleton-read "Autoload: "))
  > "class_alias(" original ", " alias ", " autoload ");" \n
)

(define-skeleton php-class_exists
  "Insert a class_exists statement. Checks if the class has been defined"
  '(setq class_name (skeleton-read "Class name: "))
  '(setq autoload (skeleton-read "Autoload: "))
  > "class_exists(" class_name ", " autoload ");" \n
)

(define-skeleton php-get_called_class
  "Insert a get_called_class statement. Gets the name of the class the static method is called in."
  > "get_called_class();" \n
)

(define-skeleton php-get_class_methods
  "Insert a get_class_methods statement."
  ""
  '(setq str (skeleton-read "Class? "))
  > "get_class_methods('" str "');" \n
)

(define-skeleton php-get_class_vars
  "Insert a get_class_vars statement."
  ""
  '(setq str (skeleton-read "Class? "))
  > "get_class_vars('" str "');" \n
)

(define-skeleton php-get_class
  "Insert a get_class statement."
  ""
  '(setq str (skeleton-read "Class? "))
  > "get_class('" str "');" \n
)


(define-skeleton php-get_object_vars
  "Insert a get_object_var statement."
  ""
  '(setq str (skeleton-read "Var? "))
  > "get_object_vars('" str "');" \n
)

