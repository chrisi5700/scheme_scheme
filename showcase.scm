

(define (f x) (load "sub2mul.scm") (sub-2-mul x 5)) ; local to that function
(display "Loaded sub2mul.scm locally to f with (f 2) = ")
(display (f 2)) ; 0
(newline)
(newline)
; (sub-2-mul 5 5) ; error
(load "sub2mul.scm")
(display "loaded sub2mul.scm globally")
(newline)

(display "(sub-2-mul 5 5) = ")
(display (sub-2-mul 5 5)) ; 9
(newline)
(newline)

(define fix-first-arg (sub-2-mul _ 5)) ; turns into a lambda
; (lambda (x) (sub-2-mul x 5))
(display "Defined partially applied function fix-first-arg")
(newline)
(display "(fix-first-arg 4) = ")
(display (fix-first-arg 4))
(newline)
(newline)


(load-expr '(define sub-2 (- _ 2)))
(display "Loaded sub-2 procedure from quote")
(newline)
(display "(sub-2 5) = ")
(display (sub-2 5))
(newline)
(newline)

(breakpoint)
; choice between:
; 0: displaying the value of a variable
; 1: evaluating an expression
; 2: continue
