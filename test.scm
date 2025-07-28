#!r6rs
(import (rnrs io simple (6)) (utility))


(define (run-test proc in out)  
  (let ((actual-out (apply proc in)))
    (if (equal? actual-out out)
      (display "Test Successful\n")
      (begin (display "Test failed") (newline)
             (display proc)(newline)
             (display in) (newline)
             (display out) (newline)
             (display actual-out) (newline)))))



(run-test iota '(10) '(0 1 2 3 4 5 6 7 8 9))
(run-test enumerate '((a b c d e f)) '((0 a) (1 b) (2 c) (3 d) (4 e) (5 f)))
(run-test file->string '("meta.mce") "(define sub-2 (- _ 2))\n")
