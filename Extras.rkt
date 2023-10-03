#lang racket
;Exportacion de funciones
(provide(all-defined-out))


(define (1_elem x) (car x))
(define (2_elem x) (cadr x))
(define (3_elem x) (caddr x))
(define (4_elem x) (cadddr x))
(define (5_elem x) (car(cddddr x)))
(define (6_elem x) (cadr(cddddr x)))
(define (7_elem x) (caddr(cddddr x)))



#|
 Descripción: Funcion la cual obtiene la fecha actual
 Tipo de algoritmo/estrategia: Se crea un string en cual contiene el dia mes y año actual
 Tipo de recursión: N/A
 Dominio: -
 Recorrido: string
|#
(require racket/date)
(define (creacion_fecha) (string-append
                          (number->string(date-day(current-date))) "-"
                          (number->string(date-month(current-date)))"-"
                          (number->string(date-year(current-date)))
                          ))


;Compara los id para que no se repitan
(define (comparador_ID par1 par2)
  (equal? (cadr par1) (cadr par2)))