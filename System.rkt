#lang racket
(require "Extras.rkt")
(require "Option.rkt")
(require "Flow.rkt")
(require "ChatBot.rkt")
(provide(all-defined-out))
;TDA system
;( "system", nombre, InitialChatbo, (list chatbots), (TDA usuario), (N° chatbot actual  N° flujo actual)

(define (system nombre ini . chatbot)

  (append (list "system" nombre ini) (list (remove-duplicates chatbot comparador_ID)) (list null) (list (list 0 1)))
  )

(define (system-add-chatbot system chatbot)

  (list (1_elem system) (2_elem system) (3_elem system) (remove-duplicates (append (4_elem system) (list chatbot)) comparador_ID)
        (5_elem system)
        (6_elem system)
  ))


(define (obtener_Bot_Rec lista_chatbots bot salida)

  (cond
    [(= 0 (length lista_chatbots)) salida]

    [(= bot (2_elem (car lista_chatbots))) (obtener_Bot_Rec (cdr lista_chatbots) bot  (car lista_chatbots)) ]

    [else (obtener_Bot_Rec (cdr lista_chatbots) bot salida)]
      
      )
  )

(define (agregar x y)
  (if (= 0 (length x)) y
      (append x y))
  )

(define (obtener_Flujos lista_flujos flujo)

  (if (= (2_elem (1_elem lista_flujos)) flujo)
      (1_elem lista_flujos)
      (obtener_Flujos (cdr lista_flujos))
         
      )
  )


(define (system-talk-rec system eleccion)

  (if (and (< 0 (length ( 5_elem system) )) (not (equal? "sin_login" (2_elem( 5_elem system)))))
      ;si
      (list (1_elem system) (2_elem system) (3_elem system) (4_elem system) (5_elem system)
            (list (4_elem (obtener_Flujos (4_elem(1_elem(6_elem (obtener_Bot_Rec (4_elem system) (1_elem (6_elem system)) (list null))))) (2_elem (6_elem system))))
                  (5_elem (obtener_Flujos (4_elem(1_elem(6_elem (obtener_Bot_Rec (4_elem system) (1_elem (6_elem system)) (list null))))) (2_elem (6_elem system))))
                  )
            )
      
      


      system);caso que no

  
  )







(define s0 (system "Chatbots Paradigmas" 0))
(define s1 (system "Chatbots Paradigmas" 0 cb10 cb10))
(define s2 (system-add-chatbot s0 cb10))
(define s3 (system-add-chatbot s2 cb10))