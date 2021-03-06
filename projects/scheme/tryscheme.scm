(define (create result dens)
  (cond ((null? dens) nil)
        ((and ((< result (car dens)) (> result 0))) (create result cdr(dens)))
        (else cons((car dens) (create (- result (car dens)) dens) ))
  )
)

(define (create result dens)
  (cond ((null? dens) nil)
        ((< result (car dens)) (create result cdr(dens)))
        (else (cons((car dens) (create (- result (car dens)) dens) )))
  )
)
