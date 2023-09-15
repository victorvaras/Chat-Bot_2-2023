#lang racket
(require "Extras.rkt")
(require "Option.rkt")
(require "Flow.rkt")
(require "ChatBot.rkt")

;TDA system
;( "system", nombre, InitialChatbo )

(define (system nombre ini . chatbot)

  (append (list "system" nombre ini) (list (remove-duplicates chatbot comparador_ID)))
  )



(define s0 (system "Chatbots Paradigmas" 0))
(define s1 (system "Chatbots Paradigmas" 0 cb10))