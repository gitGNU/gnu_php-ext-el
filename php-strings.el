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

;; http://php.net/manual/en/ref.strings.php
;; file:///usr/share/doc/php-doc/html/ref.strings.html

(define-skeleton php-addcslashes 
  "Insert an addcslashes statement"
  ""
  '(setq str (skeleton-read "String? "))
  '(setq charlist (skeleton-read "Charlist? "))
  > "addclslashes(" str ", " charlist ");" \n)

(define-skeleton php-addslashes 
  "Insert an addcslashes statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "addclslashes(" str ");" \n)

(define-skeleton php-bin2hex
  "Insert a bin2hex statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "bin2hex(" str ");" \n)

(define-skeleton php-chop
  "Insert a chop statement. Alias of rtrim"
  ""
  '(setq str (skeleton-read "String: "))
  > "chop(" str ");" \n)

(define-skeleton php-chr
  "Insert a chr statement. Returns a specific character from ascii code"
  '(setq ascii (skeleton-read "String: "))
  > "chr(" ascii ");" \n)

(define-skeleton php-chunk_split
  "Insert a chunk_split statement. Split a a string into smaller chunks"
  '(setq body (skeleton-read "String: "))
  '(setq chunklen (skeleton-read "Chunk length: "))
  '(setq end (skeleton-read "End: "))
  > "chunk_split(" body ", " chunklen ", " end ");" \n
)

(define-skeleton php-convert_cyr_string
  "Insert a convert_cyr_string statement"
  ""
  '(setq str (skeleton-read "String? "))
  '(setq from (skeleton-read "From? "))
  '(setq to (skeleton-read "To? "))
  > "convert_cyr_string(" str ", " from ", " to ");" \n)

(define-skeleton php-convert_uudecode
  "Insert a bin2hex statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "convert_uudecode(" str ");" \n)

(define-skeleton php-convert_uuencode
  "Insert a bin2hex statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "convert_uuencode(" str ");" \n)

(define-skeleton php-count_chars
  "Insert a count_chars statement. Return information about characters used in a string"
  '(setq str (skeleton-read "String? "))
  '(setq mode (skeleton-read "Mode? "))
  > "count_chars(" str ", " mode ");" \n
)

(define-skeleton php-crc32
  "Insert a crc32 statement. Calculates the crc32 polynomial of a string"
  '(setq str (skeleton-read "String: "))
  > "crc32(" str ");" \n
)

(define-skeleton php-crypt
  "Insert a crypt statement. One-way string hashing"
  '(setq str (skeleton-read "String: "))
  '(setq salt (skeleton-read "Salt: "))
  > "crypt(" str ", " salt ");" \n
)

(define-skeleton php-echo
  "Insert an echo statement"
  ""
  '(setq str (skeleton-read "String: "))
  > "echo '" str "';" \n)

(define-skeleton php-explode
  "Insert an explode statement"
  ""
  '(setq separator (skeleton-read "Explode separator? "))
  '(setq var (skeleton-read "Explode variable? "))
  > "explode('" separator "', " var ");" \n)

(define-skeleton php-fprintf 
  "Insert a fprintf statement"
  '(setq handle (skeleton-read "Handle: "))
  '(setq format (skeleton-read "Format: "))
  '(setq args (skeleton-read "Args: "))
  > "fprintf(" handle ", " format ", " args ");" \n
)

(define-skeleton php-get_html_translation_table
  "Insert a get_html_translation_table statement. Returns the translation table used by htmlspecialchars and htmlentities"
  '(setq table (skeleton-read "Table: "))
  '(setq flags (skeleton-read "Flags: "))
  '(setq encoding (skeleton-read "Encoding: "))
  > "get_html_translation_table(" table ", " flags ", " encoding ");" \n
)


(define-skeleton php-hebrev
  "Insert a hebrev statement. Convert logical Hebrew text to visual text with newline conversion"
  '(setq hebrew_text (skeleton-read "Hebrew text: "))
  '(setq max_chars_per_line (skeleton-read "Maximum number of characters per line: "))
  > "hebrev(" hebrew_text ", " max_chars_per_line ");" \n
)

(define-skeleton php-hebrevc
  "Insert a hebrevc statement. Convert logical Hebrew text to visual text with newline conversion"
  '(setq hebrew_text (skeleton-read "Hebrew text: "))
  '(setq max_chars_per_line (skeleton-read "Maximum number of characters per line: "))
  > "hebrevc(" hebrew_text ", " max_chars_per_line ");" \n
)

(define-skeleton php-hex2bin
  "Insert a hex2bin statement. Decodes a hexadecimally encoded binary string."
  '(setq data (skeleton-read "Data: "))
  > "hex2bin(" data ");" \n
)

(define-skeleton php-html_entity_decode
  "Insert a html_entity_decode statement. Convert special characters to HTML entities"
  '(setq string (skeleton-read "String: "))
  '(setq flags (skeleton-read "Flags: "))
  '(setq encoding (skeleton-read "Encoding: "))
  > "html_entity_decode(" string ", " flags ", " encoding ");" \n
)

(define-skeleton php-htmlentities
  "Insert a htmlentities statement. Convert all applicable characters to HTML entities"
  '(setq string (skeleton-read "String: "))
  '(setq flags (skeleton-read "Flags: "))
  '(setq encoding (skeleton-read "Encoding: "))
  > "htmlentities(" string ", " flags ", " encoding ");" \n
)

(define-skeleton php-htmlspecialchars_decode
  "Insert a htmlspecialchars_decode statement. Convert special HTML entities back to characters"
  '(setq string (skeleton-read "String: "))
  '(setq flags (skeleton-read "Flags: "))
  > "htmlspecialchars_decode(" string ", " flags ");" \n
)

(define-skeleton php-htmlspecialchars
  "Insert a htmlspecialchars_decode statement. Convert special HTML entities back to characters"
  '(setq string (skeleton-read "String: "))
  '(setq flags (skeleton-read "Flags: "))
  '(setq encoding (skeleton-read "Encoding: "))
  '(setq double_encode (skeleton-read "Double encode (true | false): "))
  > "htmlspecialchars_decode(" string ", " flags ");" \n
)

(define-skeleton php-implode
  "Insert an implode statement"
  ""
  '(setq separator (skeleton-read "Implode separator? "))
  '(setq var (skeleton-read "Implode variable? "))
  > "implode('" separator "', " var 
  (skeleton-read 
   > ", " str )
  > ");"
  )

(define-skeleton php-join
  "Insert an join statement"
  ""
  '(setq separator (skeleton-read "Join separator? "))
  '(setq var (skeleton-read "Join variable? "))
  > "join('" separator "', " var 
  (skeleton-read 
   > ", " str )
  > ");"
  )

(define-skeleton php-lcfirst
  "Insert a lcfirst statement. Make a string's first character lowercase"
  '(setq str (skeleton-read "String? "))
  > "lcfirst(" str ");" \n
)

(define-skeleton php-levenshtein
  "Insert a levenshtein statement. Calculate Levenshtein distance between two strings"
  '(setq str1 (skeleton-read "String? "))
  '(setq str2 (skeleton-read "String? "))
  > "levenshtein(" str1 ", " str2 ");" \n
)

(define-skeleton php-localeconv
  "Insert a localeconv statement."
  > "localeconv();" \n
)

(define-skeleton php-rtrim
  "Insert a rtrim statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "rtrim(" str ");" \n)

(define-skeleton php-strlen
  "Insert a strlen statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "strlen(" str ");" \n)

(define-skeleton php-strtolower
  "Insert a strlower statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "strtolower(" str ");" \n)

(define-skeleton php-strtotime
  "Insert a strtotime statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "strtotime(" str ");" \n)

(define-skeleton php-strtoupper
  "Insert a strtoupper statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "strtoupper(" str ");" \n)

(define-skeleton php-strrev
  "Insert a strrev statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "strrev('" str "');" \n)

(define-skeleton php-ucfirst
  "Insert a ucfirst statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "ucfirst('" str "');" \n)

(define-skeleton php-ucwords
  "Insert a ucfirst statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "ucwords('" str "');" \n)
