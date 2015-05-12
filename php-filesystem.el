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

(define-skeleton php-file_get_contents
  "Insert a file_get_contents statement. file_get_contents reads entire file into a string"
  '(setq filename (skeleton-read "filename: "))
  '(setq use_include_path (skeleton-read "use_include_path: "))
  '(setq resource (skeleton-read "resource: "))
  '(setq offset (skeleton-read "offset: "))
  '(setq maxlen (skeleton-read "maxlen: "))
  > "file_get_contents(" filename ", " use_include_path ", " resource ", " offset ", " maxlen ");" \n
  )

(define-skeleton php-file_put_contents
  "Insert a file_put_contents statement. file_put_contents writes a string to a file"
  '(setq filename (skeleton-read "filename: "))
  '(setq data (skeleton-read "data: "))
  '(setq flags (skeleton-read "flags: "))
  '(setq context (skeleton-read "context: "))
  > "file_put_contents(" filename ", " data ", " flags ", " context ");" \n
  )

(define-skeleton php-file
  "Insert a file statement. file reads a string into an array"
  '(setq filename (skeleton-read "filename: "))
  '(setq flags (skeleton-read "flags: "))
  '(setq context (skeleton-read "context: "))
  > "file(" filename ", " flags ", " context ");" \n
  )

(define-skeleton php-fileatime
  "Insert a fileatime statement. fileatime gets last access time of file"
  '(setq filename (skeleton-read "filename: "))
  > "fileatime(" filename ");" \n
  )

(define-skeleton php-filectime
  "Insert a filectime statement. filectime gets inode change time of file"
  '(setq filename (skeleton-read "filectime: "))
  > "filectime(" filename ");" \n
  )

(define-skeleton php-fileinode
  "Insert a fileinode statement. fileinode gets the file inode"
  '(setq filename (skeleton-read "fileinode: "))
  > "fileinode(" filename ");" \n
  )

(define-skeleton php-filemtime
  "Insert a filemtime statement. filemtime gets the file modification"
  '(setq filename (skeleton-read "filemtime: "))
  > "filemtime(" filename ");" \n
  )

(define-skeleton php-fileowner
  "Insert a fileowner statement. fileowner gets the file owner"
  '(setq filename (skeleton-read "fileowner: "))
  > "fileowner(" filename ");" \n
  )

(define-skeleton php-fileperms
  "Insert a fileperms statement. fileperms gets the file permissions"
  '(setq filename (skeleton-read "fileperms: "))
  > "fileperms(" filename ");" \n
  )

(define-skeleton php-filesize
  "Insert a filesize statement. filesize gets the size for the given file"
  '(setq filename (skeleton-read "filesize: "))
  > "filesize(" filename ");" \n
  )

(define-skeleton php-filetype
  "Insert a filetype statement. filetype gets the type for the given file"
  '(setq filename (skeleton-read "filetype: "))
  > "filetype(" filename ");" \n
  )

(define-skeleton php-flock
  "Insert a flock statement. flock is a portable advisory file locking"
  '(setq handle (skeleton-read "handle: "))
  '(setq operation (skeleton-read "operation: "))
  '(setq wouldblock (skeleton-read "wouldblock: "))
  > "flock(" handle ", " operation ", " wouldblock ");" \n
  )

(define-skeleton php-fnmatch
  "Insert a fnmatch statement. fnmatch match filename against a pattern"
  '(setq pattern (skeleton-read "pattern: "))
  '(setq string (skeleton-read "string: "))
  '(setq flags (skeleton-read "flags: "))
  > "fnmatch(" pattern ", " string ", " flags ");" \n
)

(define-skeleton php-fopen
  "Insert a fopen statement. fopen binds a named resource"
  '(setq filename (skeleton-read "filename: "))
  '(setq mode (skeleton-read "mode: "))
  '(setq use_include_path (skeleton-read "use_include_path: "))
  '(setq context (skeleton-read "context: "))
  > "fopen(" filename ", " mode ", " use_include_path ", " context ");" \n
)

(define-skeleton php-fpassthru
  "Insert a fpassthru statement. fpassthru output all remaining data on a file pointer"
  '(setq handle (skeleton-read "handle: "))
  > "fpassthru(" handle ");" \n
)

(define-skeleton php-fputcsv
  "Insert a fputcsv statement. fputcsv formats line as csv and write to file pointer"
  '(setq handle (skeleton-read "handle: "))
  '(setq fields (skeleton-read "fields: "))
  '(setq delimiter (skeleton-read "delimiter: "))
  '(setq enclosure (skeleton-read "enclosure: "))
  > "fputcsv(" handle ", " fields ", " delimiter ", " enclosure ");" \n
)

(define-skeleton php-fread
  "Insert a fread statement. Binary-safe file read"
  '(setq handle (skeleton-read "handle: "))
  '(setq length (skeleton-read "length: "))
  > "fread(" handle ", " length ");" \n
)

(define-skeleton php-fscanf
  "Insert a fscanf statement. fscanf parses input from a file according to a format"
  '(setq handle (skeleton-read "handle: "))
  '(setq format (skeleton-read "format: "))
  > "fscanf(" handle ", " format ");" \n
)

(define-skeleton php-fseek
  "Insert a fseek statement. fseek seeks on a file pointer."
  '(setq handle (skeleton-read "handle: "))
  '(setq offset (skeleton-read "offset: "))
  '(setq whence (skeleton-read "whence: "))
  > "fseek(" handle ", " offset ", " whence ");" \n
)

(define-skeleton php-fstat
  "Insert a fstat statement. fstat gets information about a file using an open file pointer"
  '(setq handle (skeleton-read "handle: "))
  > "fstat(" handle ");" \n
)

(define-skeleton php-ftell
  "Insert a ftell statement. ftell returns the current position of the file read/write pointer"
  '(setq handle (skeleton-read "handle: "))
  > "ftell(" handle ");" \n
)

(define-skeleton php-ftruncate
  "Insert a ftruncate statement. ftruncate truncates a file to a given length"
  '(setq handle (skeleton-read "handle: "))
  '(setq size (skeleton-read "size: "))
  > "ftruncate(" handle ", " size ");" \n
)

(define-skeleton php-fwrite
  "Insert a fwrite statement. Binary safe file write"
  '(setq handle (skeleton-read "handle: "))
  '(setq string (skeleton-read "string: "))
  '(setq length (skeleton-read "length: "))
  > "fwrite(" handle ", " string ", " length ");" \n
)

(define-skeleton php-glob
  "Insert a glob statement. Find pathnames matching a pattern"
  '(setq pattern (skeleton-read "pattern: "))
  '(setq flags (skeleton-read "flags: "))
  > "glob(" pattern ", " flags ");" \n
)

(define-skeleton php-is_dir
  "Insert a is_dir statement. is_dir tells whether the filename is a directory"
  '(setq filename (skeleton-read "filename: "))
  > "is_dir(" filename ");" \n
)

(define-skeleton php-is_executable
  "Insert a is_executable statement. is_executable tells whether the filename is a executable"
  '(setq filename (skeleton-read "filename: "))
  > "is_executable(" filename ");" \n
)

(define-skeleton php-is_file
  "Insert a is_file statement. is_file tells whether the filename is a regular file"
  '(setq filename (skeleton-read "filename: "))
  > "is_file(" filename ");" \n
)

(define-skeleton php-is_link
  "Insert a is_link statement. is_link tells whether the filename is a symbolic link"
  '(setq filename (skeleton-read "filename: "))
  > "is_link(" filename ");" \n
)

(define-skeleton php-is_readable
  "Insert a is_readable statement. is_readable tells whether the filename is a readable"
  '(setq filename (skeleton-read "filename: "))
  > "is_readable(" filename ");" \n
)

(define-skeleton php-is_uploaded_file
  "Insert a is_uploaded_file statement. is_uploaded_file tells whether the filename is a executable"
  '(setq filename (skeleton-read "filename: "))
  > "is_uploaded_file(" filename ");" \n
)

(define-skeleton php-is_writable
  "Insert a is_writable statement. is_writable tells whether the filename is a writable"
  '(setq filename (skeleton-read "filename: "))
  > "is_writable(" filename ");" \n
)

(define-skeleton php-lchgrp
  "Insert a lchgrp statement. lchgrp changes group ownership of symlink"
  '(setq filename (skeleton-read "filename: "))
  '(setq group (skeleton-read "group: "))
  > "lchgrp(" filename ", " group ");" \n
)

(define-skeleton php-lchown
  "Insert a lchown statement. lchown changes user ownership of symlink"
  '(setq filename (skeleton-read "filename: "))
  '(setq user (skeleton-read "user: "))
  > "lchown(" filename ", " user ");" \n
)

(define-skeleton php-link 
  "Insert a link statement. link creates a hard link"
  '(setq target (skeleton-read "target of the link: "))
  '(setq link (skeleton-read "link: "))
  > "link(" target ", " link ");" \n
)

(define-skeleton php-linkinfo 
  "Insert a linkinfo statement. linkinfo gets information about a link"
  '(setq path (skeleton-read "path of the link: "))
  > "linkinfo(" path ");" \n
)

(define-skeleton php-lstat 
  "Insert a lstat statement. lstat gives information about a symbolic link or file"
  '(setq path (skeleton-read "path of the link: "))
  > "lstat(" path ");" \n
)



