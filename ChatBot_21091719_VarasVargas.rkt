#lang racket
(require "Extras_21091719_VarasVargas.rkt")
(require "Option_21091719_VarasVargas.rkt")
(require "Flow_21091719_VarasVargas.rkt")
(provide(all-defined-out))
;TDA ChatBot
;( "chatbot", ID, nombre, mensaje, startFlowId,( (list flujos) )


#|
 Descripción: Funcion que crea un chatbot con su nombre respectivo id mensaje y flujos si se le indica
 Tipo de algoritmo/estrategia: Concatenar
 Tipo de recursión: N/A
 Dominio: int X string X string X int X flujos
 Recorrido: chatbot
|#
(define (chatbot ID nombre mensaje startFlowId . flujos)
  
  (append (list "chatbot" (number->string ID) nombre mensaje startFlowId) (list (remove-duplicates flujos comparador_ID)))
  )



#|
 Descripción: Funcion que agrega flow a chatbot
 Tipo de algoritmo/estrategia: Se agrega a traves de recursion 
 Tipo de recursión: Natural
 Dominio: chatbot X flujos
 Recorrido: chatbot
|#
(define (chatbot-add-flow chatbot . flujos)
  (if (null? (cdr chatbot))
      (list (remove-duplicates flujos comparador_ID))
      

  (append (list (1_elem chatbot) (chatbot-add-flow (cdr chatbot) flujos)))
  ))
  


