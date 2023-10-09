#lang racket
(require "Extras_21091719_VarasVargas.rkt")
(require "Option_21091719_VarasVargas.rkt")
(provide(all-defined-out))

;TDA Flujo
;( "Flujo", ID, Nombre, (list de options))


#|
 Descripción: Funcion contructora de flow 
 Tipo de algoritmo/estrategia: Concatenacion de elementos en lista
 Tipo de recursión: N/A
 Dominio: int X string X string
 Recorrido: Flow
|#
(define flow (lambda (ID nombre . option)
               
               (append (list "flujo" (number->string ID) nombre) (list (remove-duplicates option comparador_ID)))
               
               ))


#|
 Descripción: Funcion que agrega un option a flow
 Tipo de algoritmo/estrategia:  Concatenar
 Tipo de recursión: N/A
 Dominio: Flow X option
 Recorrido: flow
|#
(define flow-add-option (lambda (flow option)
                          
                          (if (= 3 (length flow))
                              (list (1_elem flow) (2_elem flow) (3_elem flow) (list option))
                              (list (1_elem flow) (2_elem flow) (3_elem flow) (remove-duplicates (append (4_elem flow) (list option)) comparador_ID)
                                    )
                            )
                          ))

