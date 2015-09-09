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

(define-skeleton php-array_fill_keys
  "Insert a array_fill_keys statement."
  ""
  '(setq keys (skeleton-read "keys: "))
  '(setq value (skeleton-read "value: "))
  > "array_fill_keys(" keys ", " value ");" \n
)

(define-skeleton php-array_fill
  "Insert a array_fill statement."
  ""
  '(setq start_index (skeleton-read "start_index: "))
  '(setq num (skeleton-read "num: "))
  '(setq value (skeleton-read "value: "))
  > "array_fill(" start_index ", " num ", " value ");" \n
)

(define-skeleton php-array_filter
  "Insert a array_filter statement."
  ""
  '(setq array (skeleton-read "array: "))
  '(setq callback (skeleton-read "callback: "))
  > "array_filter(" array ", " callback ");" \n
)

(define-skeleton php-array_flip
  "Insert a array_flip statement."
  ""
  '(setq array (skeleton-read "array: "))
  > "array_flip(" array ");" \n
)

(define-skeleton php-array_intersect_key
  "Insert a array_intersect_key statement. Computes the intersection of arrays using keys for comparison"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_intersect_key(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_intersect_uassoc
  "Insert a array_intersect_uassoc statement. "
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_intersect_uassoc(" array2 ", " array2 
  ( "another array?, %s: "
    ", " str)
  > ", " (skeleton-read "key compare function: ")
  ");" \n
)

(define-skeleton php-array_intersect_ukey
  "Insert a array_intersect_ukey statement. Computes the intersection of arrays using a callback function on the keys for comparison"
  ""  
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_intersect_ukey(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  > ", " (skeleton-read "key compare function: ")
  ");" \n
)

(define-skeleton php-array_intersect
  "Insert a array_intersect statement. Computes the intersection of arrays
"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_intersect(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_key_exists
  "Insert a array_key_exists statement. Checks if the given key or index exists in the array"
  ""
  '(setq key (skeleton-read "key: "))
  '(setq array (skeleton-read "array: "))
  > "array_key_exists(" key ", " array ");" \n
)

(define-skeleton php-array_keys
  "Insert a array_keys statement. Return all the keys or a subset of the keys of an array"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq search_value (skeleton-read "search_value: "))
  '(setq strict (skeleton-read "strict: "))
  > "array_keys(" array ", " search_value ", " strict ");" \n
)

(define-skeleton php-array_map
  "Insert a array_map statement. Applies the callback to the elements of the given arrays"
  ""
  '(setq callback (skeleton-read "callback: "))
  '(setq array1 (skeleton-read "array1: "))
  > "array_map(" callback ", " array1
  ( "another array?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_merge_recursive
  "Insert a array_merge_recursive statement. Merge two or more arrays recursively"
  ""
  '(setq array1 (skeleton-read "array1: "))
  > "array_merge_recursive(" array1 
  ( "another array?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_merge
  "Insert a array_merge statement. Merge two or more arrays recursively"
  ""
  '(setq array1 (skeleton-read "array1: "))
  > "array_merge(" array1 
  ( "another array?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_multisort
  "Insert a array_multisort statement. Sort multiple or multi-dimensional arrays"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array1_sort_order (skeleton-read "array1_sort_order: "))
  '(setq array1_sort_flags (skeleton-read "array1_sort_flags: "))
  > "array_multisort(" array1 ", " array1_sort_order ", " array_sort_flags ");" \n
)

(define-skeleton php-array_pad
  "Insert a array_pad statement. Pad array to the specified length with a value"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq size (skeleton-read "size: "))
  '(setq value (skeleton-read "value: "))
  > "array_pad(" array ", " size ", " value ");" \n
)

(define-skeleton php-array_pop
  "Insert a array_pop statement."
  ""
  '(setq array (skeleton-read "array: "))
  > "array_pop(" array ");" \n
)

(define-skeleton php-array_product
  "Insert a array_product statement."
  ""
  '(setq array (skeleton-read "array: "))
  > "array_product(" array ");" \n
)

(define-skeleton php-array_push
  "Insert a array_push statement."
  ""
  '(setq array (skeleton-read "array: "))
  '(setq value1 (skeleton-read "value1: "))
  > "array_push(" array ", " value1
  ( "another variable?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_rand
  "Insert a array_rand statement."
  ""
  '(setq array (skeleton-read "array: "))
  '(setq num (skeleton-read "num: "))
  > "array_rand(" array ", " num ");" \n
)

(define-skeleton php-array_reduce
  "Insert a array_reduce statement. Iteratively reduce the array to a single value using a callback function"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq callback (skeleton-read "callback: "))
  '(setq initial (skeleton-read "initial: "))
  > "array_reduce(" array ", " callback ", " initial ");" \n
)

(define-skeleton php-array_replace_recursive
  "Insert a array_replace_recursive statement. Replaces elements from passed arrays into the first array recursively"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_replace_recursive(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_replace
  "Insert a array_replace statement."
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))  
  > "array_replace(" array1 ", " array2
  ( "another array?, %s: "
    ", " str)
  ");" \n
)

(define-skeleton php-array_reverse
  "Insert a array_reverse statement."
  ""
  '(setq array (skeleton-read "array: "))
  '(setq preserve_keys (skeleton-read "preserve_keys: "))
  > "array_reverse(" array ", " preserve_keys ");" \n
)

(define-skeleton php-array_search
  "Insert a array_search statement."
  ""
  '(setq needle (skeleton-read "needle: "))
  '(setq array (skeleton-read "array: "))
  '(setq strict (skeleton-read "strict: "))
  > "array_search(" needle ", " array ", " strict ");" \n
)

(define-skeleton php-array_shift
  "Insert a array_shift statement."
  ""
  '(setq array (skeleton-read "array: "))
  > "array_shift(" array ");" \n
)

(define-skeleton php-array_slice
  "Insert a array_slice statement."
  ""
  '(setq array (skeleton-read "array: "))
  '(setq offset (skeleton-read "offset: "))
  '(setq length (skeleton-read "length: "))
  '(setq preserve_keys (skeleton-read "preserve_keys: "))
  > "array_slice(" array ", " offset ", " length ", " preserve_keys ");" \n
)

(define-skeleton php-array_splice
  "Insert a array_slice statement."
  ""
  '(setq array (skeleton-read "array: "))
  '(setq offset (skeleton-read "offset: "))
  '(setq length (skeleton-read "length: "))
  '(setq replacement (skeleton-read "replacement: "))
  > "array_slice(" array ", " offset ", " length ", " replacement ");" \n
)

(define-skeleton php-array_sum
  "Insert a array_sum statement."
  ""
  '(setq array (skeleton-read "array: "))
  > "array_sum(" array ");" \n
)

(define-skeleton php-array_udiff_assoc
  "Insert a array_udiff_assoc statement. Computes the difference of arrays with additional index check, compares data by a callback function"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_udiff_assoc(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ", " (skeleton-read "value compare func: ") ");" \n
)

(define-skeleton php-array_udiff_uassoc
  "Insert a array_udiff_assoc statement. Computes the difference of arrays with additional index check, compares data and indexes by a callback function"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_udiff_assoc(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ", " (skeleton-read "value compare func: ") 
  ", " (skeleton-read "key compare func: ") 
  ");" \n
)

(define-skeleton php-array_udiff
  "Insert a array_udiff_assoc statement. Computes the difference of arrays by using a callback function for data comparison"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))
  > "array_udiff(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ", " (skeleton-read "value compare func: ") ");" \n
)

(define-skeleton php-array_uintersect_assoc
  "Insert a array_uintersect_assoc statement. Computes the intersection of arrays with additional index check, compares data by a callback function"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))  
  > "array_uintersect_assoc(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ", " (skeleton-read "value compare func: ") ");" \n  
)

(define-skeleton php-array_uintersect_uassoc
  "Insert a array_uintersect_uassoc statement. Computes the intersection of arrays with additional index check, compares data and indexes by a callback functions"
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))  
  > "array_uintersect_uassoc(" array1 ", " array2 
  ( "another array?, %s: "
    ", " str)
  ", " (skeleton-read "value compare func: ")  
  ", " (skeleton-read "key compare func: ") ");" \n  
)

(define-skeleton php-array_uintersect
  "Insert a array_uintersect statement."
  ""
  '(setq array1 (skeleton-read "array1: "))
  '(setq array2 (skeleton-read "array2: "))    
  > "array_uintersect(" array1 ", " array2
  ( "another array?, %s: "
    ", " str)
  ", " (skeleton-read "value compare func: ") ");" \n  
)

(define-skeleton php-array_unique
  "Insert a array_unique statement. Removes duplicate values from an array"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq sort_flags (skeleton-read "sort_flags: "))
  > "array_unique(" array ", " sort_flags ");" \n
)

(define-skeleton php-array_unshift
  "Insert a array_unshift statement. Prepend one or more elements to the beginning of an array"
  ""
  '(setq array (skeleton-read "array: "))
  '(setq value1 (skeleton-read "value1: "))
  > "array_unshift(" array ", " value1
  ( "another value?, %s: "
    ", " str)
  ");" \n 
)

(define-skeleton php-array_values
  "Insert a array_values statement."
  ""
  '(setq array (skeleton-read "array: "))
  > "array_values(" array ");" \n
)

(define-skeleton php-in_array
  "Insert a in_array statement. Checks if a value exists in an array"
  ""
  '(setq value (skeleton-read "value: "))
  '(setq array (skeleton-read "array: "))
  '(setq strict (skeleton-read "strict: "))
  > "in_array(" value ", " array ", " strict ");" \n
)
