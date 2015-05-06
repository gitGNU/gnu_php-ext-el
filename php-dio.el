;; Dio Functions

(define-skeleton php-dio-close
  "Insert a dio_close statement"
  ""
  '(setq fd (skeleton-read "File Descriptor? "))
  > "dio_close(" fd ");" \n
)


(define-skeleton php-dio-open
  "Insert a dio_open statement"
  ""
  '(setq filename (skeleton-read "Filename? "))
  '(setq flags (skeleton-read "Flags? "))
  '(setq mode (skeleton-read "Mode? "))
  > "dio_open(" filename ", " flags ", " mode ");" \n
)

(define-skeleton php-dio-read
  "Insert a dio_read statement"
  ""
  '(setq fd (skeleton-read "File Descriptor? "))
  '(setq length (skeleton-read "Length? "))
  > "dio_read(" fd ", " length ");" \n
)

(define-skeleton php-dio-seek
  "Insert a dio_seek statement"
  ""
  '(setq fd (skeleton-read "File Descriptor? "))
  '(setq pos (skeleton-read "Position? "))
  '(setq whence (skeleton-read "Specifies how the position pos should be interpreted (SEEK_SET | SEEK_CUR | SEEK_END): "))
  > "dio_seek(" fd ", " pos ", " whence ");" \n
)

(define-skeleton php-dio-stat
  "Insert a dio_read statement"
  ""
  '(setq fd (skeleton-read "File Descriptor? "))
  > "dio_stat(" fd ");" \n
)

(define-skeleton php-dio-fcntl
  "Insert a dio_fcntl statement"
  ""
  '(setq fd (skeleton-read "File Descriptor? "))
  '(setq cmd (skeleton-read "Command? (F_SETLK | F_SETLKW | F_GETLK | F_DUPFD | F_SETFL ) "))
  '(setq args (skeleton-read "Args? (start | length | whence | type ) "))
  > "dio_fcntl(" fd ", " cmd ", " args ");" \n
)
