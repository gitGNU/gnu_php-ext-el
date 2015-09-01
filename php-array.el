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

;; Arrays handling functions
;; http://php.net/manual/en/ref.array.php
;; file:///usr/share/doc/php-doc/html/ref.array.html

(define-skeleton php-array_change_key_case
  "Insert a array_change_key_case statement. Changes the case of all keys in an array"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq case (skeleton-read "case: "))
  > "array_change_key_case(" array ", " case ");" \n
)

(define-skeleton php-array_chunk
  "Insert a array_chunk statement. Split an array into chunks"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq size (skeleton-read "size: "))
  '(setq preserve_keys (skeleton-read "preserve_keys: "))
  > "array_chunk(" array ", " size ", " preserve_keys ");" \n
)

(define-skeleton php-array_column
  "Insert a array_column statement. Return the values from a single column in the input array"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq column_key (skeleton-read "column_key: "))
  '(setq index_key (skeleton-read "index_key: "))
  > "array_column(" array ", " column_key ", " index_key ");" \n
)

(define-skeleton php-array_combine
  "Insert a array_combine statement. Creates an array by using one array for keys and another for its values"
  ""
  '(setq keys (skeleton-read "keys: "))
  '(setq values (skeleton-read "values: "))
  > "array_combine(" keys ", " values ");" \n
)

(define-skeleton php-array_count_values
  "Insert a array_count_values statement. Counts all the values of an array"
  ""
  '(setq array (skeleton-read "array: "))
  > "array_count_values(" array ");" \n
)

(define-skeleton php-array_diff_assoc
  "Insert a array_diff_assoc statement. Computes the difference of arrays with additional index check"
  ""
  '(setq array (skeleton-read "array: "))
  > "array_diff_assoc(" array   
  ( "another array?, %s: "
    ", " str ) 
  > ");"
)

(define-skeleton php-array_diff_key
  "Insert a array_diff_key statement. Computes the difference of arrays using keys for comparison"
  ""
  '(setq array (skeleton-read "array: "))
  > "array_diff_key(" array   
  ( "another array?, %s: "
    ", " str ) 
  > ");"
)


(define-skeleton php-array_diff_uassoc
  "Insert a array_diff_uassoc statement."
  ""
  '(setq array (skeleton-read "array: "))
  > "array_diff_uassoc(" array   
  ( "another array?, %s: "
    ", " str ) 
  > ", " (skeleton-read "key compare function: ") ");"
)


(define-skeleton php-array_diff_ukey
  "Insert a array_diff_ukey statement. Computes the difference of arrays using a callback function on the keys for comparison"
  ""
  '(setq array (skeleton-read "array: "))
  > "array_diff_ukey(" array   
  ( "another array?, %s: "
    ", " str ) 
  > ", " (skeleton-read "key compare function: ") ");"
)


(define-skeleton php-array_diff
  "Insert a array_diff statement. Computes the difference of arrays"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_diff(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  > ");" \n
)
