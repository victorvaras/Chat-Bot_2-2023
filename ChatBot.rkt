#lang racket
(require "Extras.rkt")
(require "Option.rkt")
(require "Flow.rkt")
(provide(all-defined-out))
;TDA ChatBot
;( "chatbot", ID, nombre, mensaje, (list flujos) )



(define (chatbot ID nombre mensaje . flujos)
  
  (append (list "chatbot" ID nombre mensaje) (list (remove-duplicates flujos comparador_ID)))
  )


(define (chatbot-add-flow chatbot . flujos)

  (append(list (1_elem chatbot) (2_elem chatbot) (3_elem chatbot) (4_elem chatbot)) (list (remove-duplicates flujos comparador_ID)))
  )
  
 



(define cb10 (chatbot 0 "Asistente" "Bienvenido\n¿Qué te gustaría hacer?" f9 f13))

(define cb11 (chatbot 0 "Asistente" "Bienvenido\n¿Qué te gustaría hacer?"))
(define cb12 (chatbot-add-flow cb11 f9 f13))

