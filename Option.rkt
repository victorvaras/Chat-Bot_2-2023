#lang racket

(provide(all-defined-out))
(require "Extras.rkt")


;TDA Option
;option (option indice, mensaje, chat-bot, flujo, palabras_alternativas, 


;Constructor de option
(define option (lambda (indice mensaje num_chat flujo . args)

        (append (list "option" indice mensaje num_chat flujo)args)

  ))







(define op1 (option 1 "1) Viajar" 2 4 "viajar" "turistear" "conocer") )
(define op2 (option 2 "2) estudiar" 2 2 "aprender" "conocimiento"))