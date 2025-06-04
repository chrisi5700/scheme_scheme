#!r6rs

(import (rnrs io simple)
  (utility))  ; Import basic I/O

(display (zip (list 1 2 3 4) (list 5 6 7 8) (list 1 2 3 4)))
  