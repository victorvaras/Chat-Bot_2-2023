#lang racket

(provide(all-defined-out))
(require "Extras.rkt")


;TDA Option
;("option", indice, (list mensaje), chat-bot, flujo, (list palabras_alternativas) ) 


;Constructor de option
(define option (lambda (indice mensaje num_chat flujo . args)

        (append (list "option" (number->string indice) (list mensaje) (number->string num_chat) (number->string flujo))(list args))

  ))







(define op1 (option 1 "1) Viajar" 2 4 "viajar" "turistear" "conocer") )
(define op2 (option 2 "2) estudiar" 2 2 "aprender" "conocimiento"))


