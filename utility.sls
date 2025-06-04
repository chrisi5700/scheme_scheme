(library (utility)
  (export zip)
  (import (rnrs))

    (define (zip . lists)
      (apply map list lists))

)