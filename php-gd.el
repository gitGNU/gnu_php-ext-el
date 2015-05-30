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

;; GD functions
;; file:///usr/share/doc/php-doc/html/ref.image.html
;; http://php.net/manual/en/ref.image.php

(define-skeleton php-gd_info
  "Insert a gd_info statement. Retrieve information about the currently installed GD library"
  ""
  > "gd_info();" \n
)

(define-skeleton php-getimagesize
  "Insert a getimagesize statement."
  ""
  '(setq filename (skeleton-read "Filename? "))
  '(setq imageinfo (skeleton-read "Image info? "))
  > "getimagesize(" filename ", " imageinfo ");" \n
)

(define-skeleton php-getimagesizefromstring
  "Insert a getimagesizefromstring statement."
  ""
  '(setq imagedata (skeleton-read "Image data? "))
  '(setq imageinfo (skeleton-read "Image info? "))
  > "getimagesizefromstring(" imagedata ", " imageinfo ");" \n
)

(define-skeleton php-image_type_to_extension
  "Insert an image_type_to_extension statement. Get file extension for image type"
  ""
  '(setq imagetype (skeleton-read "Image type?"))
  '(setq include_dot (skeleton-read "Include dot to the extension (TRUE | FALSE)"))
  > "image_type_to_extension(" imagetype ", " include_dot ");" \n
)

(define-skeleton php-image_type_to_mime_type
  "Insert an image_type_to_mime_type statement"
  ""
  '(setq imagetype (skeleton-read "Image type?"))
  > "image_type_to_mime_type(" imagetype ");" \n
) 

(define-skeleton php-image2wbmp
  "Insert an image2wbmp statement. Output image to browser or file"
  ""
  '(setq filename (skeleton-read "Filename? "))
  '(setq image (skeleton-read "Image? "))
  '(setq treshold (skeleton-read "Treshold? "))
  > "image2wbmp(" filename ", " image ", " treshold ");" \n
)

(define-skeleton php-imageaffine
  "Insert an imageaffine statement."
  ""
  '(setq image (skeleton-read "Image? "))
  '(setq affine (skeleton-read "Affine array? "))
  '(setq clip (skeleton-read "Clip? "))
  > "imageaffine(" image ", " affine ", " clip ");" \n
)

(define-skeleton php-imageaffinematrixconcat
  "Insert an imageaffinematrixconcat statement"
  '(setq m1 (skeleton-read "Matrix 1? "))
  '(setq m2 (skeleton-read "Matrix 2? "))
  > "imageaffinematrixconcat(" m1 ", " m2 ");" \n
)

(define-skeleton php-imageaffinematrixget
  "Insert an imageaffinematrixget statement"
  '(setq type (skeleton-read "Type? "))
  '(setq options (skeleton-read "Options? "))
  > "imageaffinematrixget(" m1 ", " m2 ");" \n
)

(define-skeleton php-imagealphablending
  "Insert an imagealphablending statement"
  ""
  '(setq image (skeleton-read "Image? "))
  '(setq blendmode (skeleton-read "Blendmode? (TRUE | FALSE)"))
  > "imagealphablending(" image ", " blendmode ");" \n
)

(define-skeleton php-imageantialias
  "Insert an imageantialias statement. Should antialias functions be used or not"
  ""
  '(setq image (skeleton-read "Image? "))
  '(setq enabled (skeleton-read "Enabled? (true | false) "))
  > "imageantialias(" image ", " enabled ");" \n
)

(define-skeleton php-imagearc
  "Insert an imagearc statement"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq cx (skeleton-read "x-coordinate of the center: "))
  '(setq cy (skeleton-read "y-coordinate of the center: "))
  '(setq width (skeleton-read "width: "))
  '(setq height (skeleton-read "height: "))
  '(setq start (skeleton-read "start: "))
  '(setq end (skeleton-read "end: "))
  '(setq color (skeleton-read "color: "))
  > "imagearc(" image ", " cx ", " cy ", " width ", " height ", " start ", " end ", " color ");" \n
)

(define-skeleton php-imagechar
  "Insert an imagechar statement"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq font (skeleton-read "Font: ")) 
  '(setq x (skeleton-read "x: "))
  '(setq y (skeleton-read "y: "))
  '(setq c (skeleton-read "c: "))
  '(setq color (skeleton-read "color: "))
  > "imagechar(" image ", " font ", " x ", " y ", " c ", " color ");" \n
)

(define-skeleton php-imagecharup
  "Insert an imagecharup statement"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq font (skeleton-read "Font: ")) 
  '(setq x (skeleton-read "x: "))
  '(setq y (skeleton-read "y: "))
  '(setq c (skeleton-read "c: "))
  '(setq color (skeleton-read "color: "))
  > "imagecharup(" image ", " font ", " x ", " y ", " c ", " color ");" \n
)

(define-skeleton php-imagecolorallocate
  "Insert an imagecolorallocate statement"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  > "imagecolorallocate(" image ", " red ", " green ", " blue ");" \n
)

(define-skeleton php-imagecolorallocatealpha
  "Insert an imagecolorallocatealpha statement"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  '(setq alpha (skeleton-read "Alpha: "))
  > "imagecolorallocatealpha(" image ", " red ", " green ", " blue ", " alpha ");" \n
)

(define-skeleton php-imagecolorat
  "Insert an imagecolorat statement"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq x (skeleton-read "x: "))
  '(setq y (skeleton-read "y: "))
  > "imagecolorat(" image ", " x ", " y ");" \n
)

(define-skeleton php-imagecolorclosest 
  "Insert an imagecolorclosest statement. Get the index of the closest color to the specified color"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  > "imagecolorclosest(" image ", " red ", " green ", " blue ");" \n
)

(define-skeleton php-imagecolorclosestalpha 
  "Insert an imagecolorclosest statement. Get the index of the closest color to the specified color"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  '(setq alpha (skeleton-read "Alpha: "))
  > "imagecolorclosestalpha(" image ", " red ", " green ", " blue ", " alpha ");" \n
)

(define-skeleton php-imagecolorclosesthwb
  "Insert an imagecolorclosesthwb statement. Get the index of the closest color to the specified color"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  > "imagecolorclosestalpha(" image ", " red ", " green ", " blue ");" \n
)

(define-skeleton php-imagecolordeallocate
  "Insert an imagecolordeallocate statement. De-allocate a color for an image"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq color (skeleton-read "color: "))
  > "imagecolordeallocate(" image ", " color ");" \n
)

(define-skeleton php-imagecolorexact
  "Insert an imagecolorexact statement. Get the index of the specified color"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  > "imagecolorexact(" image ", " red ", " green ", " blue ");" \n
)

(define-skeleton php-imagecolorexactalpha
  "Insert an imagecolorexact statement. Get the index of the specified color"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  '(setq alpha (skeleton-read "Alpha: "))
  > "imagecolorexact(" image ", " red ", " green ", " blue ", " alpha ");" \n
)

(define-skeleton php-imagecolormatch
  "Insert an imagecolormatch. Makes the colors of the palette version of an image more closely match the true color version"
  '(setq image1 (skeleton-read "Image 1: "))
  '(setq image2 (skeleton-read "Image 2: "))
  > "imagecolormatch(" image1 ", " image2 ");" \n
)

(define-skeleton php-imagecolorresolve
  "Insert an imagecolorresolve statement. Get the index of the specified color"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  > "imagecolorresolve(" image ", " red ", " green ", " blue ");" \n
)

(define-skeleton php-imagecolorresolvealpha
  "Insert an imagecolorresolvealpha statement. Get the index of the specified color + alpha or it closest alternative"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  '(setq alpha (skeleton-read "Alpha: "))
  > "imagecolorresolvealpha(" image ", " red ", " green ", " blue ", " alpha ");" \n
)

(define-skeleton php-imagecolorset
  "Insert an imagecolorset statement. Set the color for the specified palette index"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq index (skeleton-read "Index: "))
  '(setq red (skeleton-read "Red: "))
  '(setq green (skeleton-read "Green: "))
  '(setq blue (skeleton-read "Blue: "))
  '(setq alpha (skeleton-read "Alpha: "))
  > "imagecolorset(" image ", " index ", " red ", " green ", " blue ", " alpha ");" \n
)

(define-skeleton php-imagecolorsforindex
  "Insert an imagecolorsforindex statement. Get the colors for an index"
  ""
  '(setq image (skeleton-read "Image: "))
  '(setq index (skeleton-read "Index: "))
  > "imagecolorsforindex(" image ", " index ");" \n
)

(define-skeleton php-imagecolorstotal
  "Insert an imagecolorstotal statement. Get the colors for an index"
  ""
  '(setq image (skeleton-read "Image: "))
  > "imagecolorstotal(" image ");" \n
)

