(import (rnrs)
        (utility))

(define-syntax check-equal?
  (syntax-rules ()
    ((_ actual expected)
     (let ((a actual)
           (e expected))
       (if (equal? a e)
           (begin (display "PASS: ") (write a) (newline))
           (begin (display "FAIL: Expected ") (write e)
                  (display ", but got ") (write a) (newline)))))))

(display "Running utility tests...\n")

(check-equal? (zip '(1 2 3) '(a b c)) '((1 a) (2 b) (3 c)))
(check-equal? (zip '(1 2 3) '(a b c) '(x y z)) '((1 a x) (2 b y) (3 c z)))
(check-equal? (zip '(1 2 3)) '((1) (2) (3)))
; (check-equal? (zip) '())

(display "All tests passed.\n")