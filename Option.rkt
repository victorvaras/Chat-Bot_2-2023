#lang racket

(provide(all-defined-out))
(require "Extras.rkt")


;TDA Option
;("option", indice, (list mensaje), chat-bot, flujo, (list palabras_alternativas) ) 



#|
 Descripción: Funcion que agrupa en una lista un elemento con una lista de elementos con cantidad indeterminada  
 Tipo de algoritmo/estrategia: Concatenar
 Tipo de recursión: N/A
 Dominio: string X list
 Recorrido: list
|#
(define (agregar indice . palabras_claves)
  (append (list(number->string indice)) (apply append palabras_claves)))


#|
 Descripción: Funcion constructora de TDA option 
 Tipo de algoritmo/estrategia: Concatenacion de elementos en lista
 Tipo de recursión: N/A
 Dominio: int X string X int X int X string
 Recorrido: option
|#
(define option (lambda (indice mensaje num_chat flujo . palabras_alternativas)
                 
        (append (list "option" (number->string indice) (list mensaje) (number->string num_chat) (number->string flujo))
                (list (agregar indice palabras_alternativas))
                )
  ))

