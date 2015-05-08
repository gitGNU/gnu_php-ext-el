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

;; Filesystem Functions
;; http://php.net/manual/en/ref.filesystem.php
;; file:///usr/share/doc/php-doc/html/ref.filesystem.html

(define-skeleton php-basename
  "Insert an addcslashes statement"
  ""
  '(setq path (skeleton-read "Path: "))
  '(setq suffix (skeleton-read "Suffix? "))
  > "basename(" path ", " suffix ");" \n)

(define-skeleton php-chgrp
  "Insert a chgrp statemt"
  ""
  '(setq filename (skeleton-read "Filename: "))
  '(setq group (skeleton-read "Group: "))
  > "chgrp(" filename ", " group ");" \n
)

(define-skeleton php-chmod
  "Insert a chmod statement."
  '(setq filename (skeleton-read "Filename: "))
  '(setq perm (skeleton-read "Permissions: "))
  > "chmod(" filename ", " perm ");" \n
)

(define-skeleton php-clearstatcache
  "Insert a clearstatcache statement."
  > "clearstatcache();" \n
  )

(define-skeleton php-copy
  "Insert a clearstatcache statement."
  '(setq file1 (skeleton-read "Filename 1: "))
  '(setq file2 (skeleton-read "Filename 2: "))
  > "copy(" file1 ", " file2 ");" \n
  )

(define-skeleton php-dirname
  "Insert a dirname statement."
  '(setq dir (skeleton-read "Dirname: "))
  > "dirname(" dir ");" \n
  )

(define-skeleton php-disk_free_space
  "Insert a disk_free_space statement."
  '(setq dir (skeleton-read "Directory: "))
  > "disk_free_space(" dir ");" \n
  )

(define-skeleton php-disk_total_space
  "Insert a disk_total_space statement."
  '(setq dir (skeleton-read "Directory: "))
  > "disk_total_space(" dir ");" \n
  )

(define-skeleton php-fclose
  "Insert a fclose statement. fclose closes an open file pointer"
  '(setq handle (skeleton-read "handle: "))
  > "fclose(" handle ");" \n
  )

(define-skeleton php-feof
  "Insert a feof statement. feof tests for end-of-file on a file pointer"
  '(setq file (skeleton-read "file: "))
  > "feof(" file ");" \n
  )

(define-skeleton php-fflush
  "Insert a fflush statement. fflush flushes the output to a file"
  '(setq file (skeleton-read "file: "))
  > "fflush(" file ");" \n
  )

(define-skeleton php-fgetc
  "Insert a fgetc statement. fgetc gets character from file pointer"
  '(setq handle (skeleton-read "handle: "))
  > "fgetc(" handle ");" \n
  )

(define-skeleton php-fgetcsv
  "Insert a fgetcsv statement. fgetcsv gets line from file pointer and parse for CSV fields"
  '(setq handle (skeleton-read "handle: "))
  '(setq length (skeleton-read "length: "))
  '(setq delimiter (skeleton-read "delimiter: "))
  '(setq enclosure (skeleton-read "enclosure: "))
  '(setq escape (skeleton-read "escape: "))
  > "fgetc(" handle ", " length ", " delimiter ", " enclosure ", " escape ");" \n
  )

(define-skeleton php-fgets
  "Insert a fgets statement. Fgets gets line from file pointer"
  '(setq handle (skeleton-read "handle: "))
  '(setq length (skeleton-read "length: "))
  > "fgets(" handle ", " length ");" \n
  )

(define-skeleton php-fgetss
  "Insert a fgetss statement. Fgets gets line from file pointer and strip HTML tags"
  '(setq handle (skeleton-read "handle: "))
  '(setq length (skeleton-read "length: "))
  '(setq allowable_tags (skeleton-read "allowable_tags: "))
  > "fgets(" handle ", " length ", " allowable_tags ");" \n
  )

(define-skeleton php-file_exists
  "Insert a file_exists statement."
  '(setq file (skeleton-read "file: "))
  > "file_exists(" file ");" \n
  )

