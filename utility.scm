#!r6rs
(library (utility)
  (export all iota zip enumerate file->string)
  (import (rnrs base (6))
          (rnrs io ports (6))
          (rnrs io simple (6)))

  (define (iota n)
    (define (build num lst)
      (if (= num 0)
          (cons 0 lst)
          (build (- num 1) (cons num lst))
          ))
    (build (- n 1) '())
  )

  (define (zip . lists)
    (apply map list lists))

  (define (enumerate lst)
    (zip (iota (length lst)) lst))

  (define (all lst)
    (if (null? lst)
        #t
        (and (car lst) (all (cdr lst)))))
  
  (define (file->string path)
    (call-with-input-file path
      (lambda (in)
        (get-string-all in))))  
)
