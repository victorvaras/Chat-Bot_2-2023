#lang racket
(require "Extras.rkt")
(require "Option.rkt")
(require "Flow.rkt")
(require "ChatBot.rkt")
(provide(all-defined-out))
;TDA system
;( "system", nombre, InitialChatbo, (list chatbots), (TDA usuario)

(define (system nombre ini . chatbot)

  (append (list "system" nombre ini) (list (remove-duplicates chatbot comparador_ID)) (list null))
  )

(define (system-add-chatbot system chatbot)

  (list (1_elem system) (2_elem system) (3_elem system) (remove-duplicates (append (4_elem system) (list chatbot)) comparador_ID)

  ))

(define s0 (system "Chatbots Paradigmas" 0))
(define s1 (system "Chatbots Paradigmas" 0 cb10 cb10))
(define s2 (system-add-chatbot s0 cb10))
(define s3 (system-add-chatbot s2 cb10))