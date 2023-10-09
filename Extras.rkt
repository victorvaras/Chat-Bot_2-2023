#lang racket
;Exportacion de funciones
(provide(all-defined-out))

#|
 Descripción: Funciones las cuales son selectores de una lista desde el elemento 1 a 7
 Tipo de algoritmo/estrategia: Selector de lista
 Tipo de recursión: N/A
 Dominio: Lista
 Recorrido: elemento
|#
(define (1_elem x) (car x))
(define (2_elem x) (cadr x))
(define (3_elem x) (caddr x))
(define (4_elem x) (cadddr x))
(define (5_elem x) (car(cddddr x)))
(define (6_elem x) (cadr(cddddr x)))
(define (7_elem x) (caddr(cddddr x)))



#|
 Descripción: Funcion que se encarga de comparar 2 elementos referentes a los ID
 Tipo de algoritmo/estrategia: Comparador 
 Tipo de recursión: N/A
 Dominio: string X string
 Recorrido: Bool
|#
(define (comparador_ID par1 par2)
  (equal? (cadr par1) (cadr par2)))