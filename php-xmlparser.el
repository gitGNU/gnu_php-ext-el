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
