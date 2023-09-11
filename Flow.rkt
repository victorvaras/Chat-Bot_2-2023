#lang racket
(require "Extras.rkt")
(require "Option.rkt")


;flujo ( flujo Nombre (list de options))


(define flow (lambda (nombre . args)

               (append (list "flujo" nombre) (list args))
               ))



(define flow-add-option (lambda (flow option)
                          
                          (list (1_elem flow) (2_elem flow)(append (3_elem flow) (list option)))
                          ))






(define f9 (flow  "Flujo1" op1 op2))
(define f10 (flow  "Flujo1"))

(define f11 (flow-add-option f10 op1))
(define f12 (flow-add-option f11 op2))
