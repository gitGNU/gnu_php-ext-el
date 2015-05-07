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
