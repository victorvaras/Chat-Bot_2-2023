#lang racket
(require "Extras_21091719_VarasVargas.rkt")
(require "Option_21091719_VarasVargas.rkt")
(require "Flow_21091719_VarasVargas.rkt")
(require "ChatBot_21091719_VarasVargas.rkt")
(provide(all-defined-out))
;TDA system
;( "system", nombre, InitialChatbo, (list chatbots), (TDA usuario), (N° chatbot actual  N° flujo actual), (TDA chatHistory))



#|
 Descripción: Funcion que crea el system con los bots
 Tipo de algoritmo/estrategia:  concatenacion
 Tipo de recursión: N/A
 Dominio: string x int X chatbot
 Recorrido: system
|#
(define (system nombre ini . chatbot)

  (append (list "system" nombre ini) (list (remove-duplicates chatbot comparador_ID)) (list null) (list (list "0" "1")) (list null) )
  )


#|
 Descripción: Funcion que agrega chatbots a system
 Tipo de algoritmo/estrategia:  concatenacion
 Tipo de recursión: N/A
 Dominio: system chatbot
 Recorrido: system
|#
(define (system-add-chatbot system chatbot)

  (list (1_elem system) (2_elem system) (3_elem system) (remove-duplicates (append (4_elem system) (list chatbot)) comparador_ID)
        (5_elem system) (6_elem system) (7_elem system)
  ))


#|
 Descripción: Funcion que busca un bot especifico 
 Tipo de algoritmo/estrategia:  Busca recursivamente un bot segun un indece especifico
 Tipo de recursión: cola
 Dominio: list_chatbot X int X salida
 Recorrido: chatbot
|#
(define (obtener_Bot_Rec lista_chatbots bot salida)

  (cond
    [(= 0 (length lista_chatbots)) salida]

    [(equal? bot (2_elem (car lista_chatbots))) (car lista_chatbots) ]

    [else (obtener_Bot_Rec (cdr lista_chatbots) bot salida)]
      
      )
  )


#|
 Descripción: Funcion la cual busca si un elemento esta en una lista
 Tipo de algoritmo/estrategia: ocupa la funcion filter para buscar los elementos  
 Tipo de recursión: N/A
 Dominio: string X flujos
 Recorrido: list
|#
(define (esta elemento lista)
  (filter (lambda (x)
            (equal? elemento x)
            )lista))
  

#|
 Descripción: Funcion que busca un flujo especifico 
 Tipo de algoritmo/estrategia: busca un flujo atraves de recursion 
 Tipo de recursión: natural
 Dominio: flujo X int
 Recorrido: flujos 
|#
(define (obtener_Flujos lista_flujos flujo)
  
  (if (esta flujo (6_elem (1_elem lista_flujos)))
      (1_elem lista_flujos)
      (obtener_Flujos (cdr lista_flujos) flujo)
      
         
      )
  )


#|
 Descripción: Funcion que interactua un usuario con los chatbots
 Tipo de algoritmo/estrategia: atraves de funciones auxiliares busca el bot y flujo correspondiente
 Tipo de recursión: N/A
 Dominio: system X string
 Recorrido: system
|#
(define (system-talk-rec_aux system eleccion)

  (if (and (< 0 (length ( 5_elem system) )) (not (equal? "sin_login" (2_elem( 5_elem system)))))
      
      (cond
        [(null? (7_elem system)) 
         (list (1_elem system) (2_elem system) (3_elem system) (4_elem system) (5_elem system) (6_elem system)
               
                 (append  (7_elem system)  (list(string-append (2_elem( 5_elem system)) ":" eleccion ))))
         ]

        [ else 
         (list (1_elem system) (2_elem system) (3_elem system) (4_elem system) (5_elem system)
               (list (4_elem (obtener_Flujos (4_elem(1_elem(6_elem (obtener_Bot_Rec (4_elem system) (1_elem (6_elem system)) (list null)))))
                                             eleccion))
                     (5_elem (obtener_Flujos (4_elem(1_elem(6_elem (obtener_Bot_Rec (4_elem system) (1_elem (6_elem system)) (list null)))))
                                             eleccion)))
               (append  (7_elem system)  (list(string-append (2_elem( 5_elem system)) ":" eleccion ))))
       ]
        
        )  
        system);caso que no
  )


#|
 Descripción: Funcion que tiene intencion de usar el recorrido de la conversacion 
 Tipo de algoritmo/estrategia: fuerza bruta
 Tipo de recursión: N/A
 Dominio:  system X eleccion 
 Recorrido: -
|#
(define (chat system eleccion)
  (display (6_elem system))
  (display (string-append (2_elem( 5_elem system)) ": " eleccion "\n"))
  
  )


#|
 Descripción: Funcion encapsuladora para ayudar a escribir el historial
 Tipo de algoritmo/estrategia: redireccionamiento
 Tipo de recursión: N/A
 Dominio: system X eleccion
 Recorrido: system
|#
(define (system-talk-rec system eleccion)

  ;(chat (system-talk-rec_aux system eleccion) eleccion)
  (system-talk-rec_aux system eleccion) 
  )
