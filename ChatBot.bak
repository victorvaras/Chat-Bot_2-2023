#lang racket
(require "Extras.rkt")
(require "Option.rkt")
(require "Flow.rkt")

(define (cantidad_chatbot lista)

  (filter (lambda (x)

            (or (string=? "chatbot" (1_elem x)))
            )lista)
  )

(define (chatbot nombre mensaje)
  (list "chatbot" nombre mensaje) ;(+ 1 (length (cantidad_chatbot lista))) agregar eso cuando se tenga en cuenta la lista
  
    )
  
 


(define cb11 (chatbot "Asistente" "Bienvenido\n¿Qué te gustaría hacer?"))

(define a (list (list "chatbot") (list "beta")))
