(define (split-at lst n)
  (cond
    ((> n (length lst)) (cons lst nil))
    ((= n 0) (cons nil lst))
    (else
      (let ((new (split-at (cdr lst) (- n 1))))
        (cons (cons (car lst) (car new)) (cdr new))
      )
    )
  )
)


(define (compose-all funcs)
  (lambda (x)
    (if (null? funcs)
      x
      ((compose-all (cdr funcs)) ((car funcs) x))
    )
  )
)

