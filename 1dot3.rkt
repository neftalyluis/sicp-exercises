#lang sicp

(define (square x)
  (* x x))

;;; Ejercicio 1.3
(define (square-from-3-numbers x y z)
  (if (and (> x y) (> z y))
      (+ (square x) (square z))
      (if (and (> x z) (> y z))
          (+ (square x) (square y))
          (+ (square y) (square z))
          )
      )
    )

(square-from-3-numbers 3 4 5)