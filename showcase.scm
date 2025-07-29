

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

(define val 1)
(display "case (val 1) (1 1)")
(if (case (val 1) (1 1))
    (display "val is equal to 1\n")
    (display "fix the code"))
(newline)

(display "case (1 1) (val val)")
(if (case (1 1) (val val))
    (display "val is even more equal to 1\n")
    (display "fix the code"))
(newline)

(display "case (val) (val)")
(if (case (val) (val))
    (display "val is even equal to val \n")
    (display "fix the code"))
(newline)

(display "case (val) ((+0 1))")
(if (case (val) ((+ 0 1)))
    (display "val is equal to 0 + 1\n")
    (display "fix the code"))
(newline)

(display "case ((* 1 1)) (val)")
(if (case ((* 1 1)) (val))
    (display "1 * 1 is equal to val\n")
    (display "fix the code"))
(newline)

(display "case ((* 1 1)) ((+ 0 1))")
(if (case ((* 1 1)) ((+ 0 1)))
    (display "1 * 1 = 0 + 1\n")
    (display "fix the code"))
(newline)

(display "case (1 new-val) (val val)")
(if (case (1 new-val) (val val))
    (begin
      (display "val is still matching 1 but new-val is also = ")
      (display new-val))
    (display "fix the code"))
(newline)
(newline)

(display "case (0 new-val) (val val)")
(if (case (0 new-val) (val val))
    (display "now fix it here")
    (display "val != 0 and new-val will be unassigned"))
(newline)
(newline)

(display "case ((* 2 5) (+ 2 val) any) (10 3 \"a string\")")
(if (case ((* 2 5) (+ 2 val) any) (10 3 "a string"))
    (begin
      (display "2 * 5 = 10 and 2 + val = 3 and any is ")
      (display any)
      (newline))
    (display "fix the code"))
(newline)
