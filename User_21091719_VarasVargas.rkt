#lang racket

(require "Extras_21091719_VarasVargas.rkt")
(require "Option_21091719_VarasVargas.rkt")
(require "Flow_21091719_VarasVargas.rkt")
(require "ChatBot_21091719_VarasVargas.rkt")
(require "System_21091719_VarasVargas.rkt")
(provide(all-defined-out))


;TDA user
;("user", usuario_login ,(list asuarios)


#|
 Descripción: Funcion que crea un usuario nuevo
 Tipo de algoritmo/estrategia: concatenacion
 Tipo de recursión: N/A
 Dominio: system X user
 Recorrido: system
|#
(define (system-add-user system user)

  (if (null? (5_elem system))
      (list (1_elem system)(2_elem system) (3_elem system) (4_elem system)
            (list "user" "sin_login" (list user))
            (6_elem system) (7_elem system))

      (list (1_elem system)(2_elem system) (3_elem system) (4_elem system)
            (list "user" (2_elem (5_elem system)) (remove-duplicates (append (caddr(5_elem system)) (list user))))
            (6_elem system) (7_elem system))
      ))




#|
 Descripción: Funcion que realiza el login de un usuario registrado
 Tipo de algoritmo/estrategia: valida si un usuario se encuentra logueado y loguea
 Tipo de recursión: N/A
 Dominio: system X user
 Recorrido: system
|#
(define (system-login system user)

  (if (and (not (null? (5_elem system)))(string=? (2_elem (5_elem system)) "sin_login" ) (member user (3_elem (5_elem system))))
      (list (1_elem system) (2_elem system) (3_elem system) (4_elem system) (list (1_elem (5_elem system)) user (3_elem (5_elem system)))
            (6_elem system)(7_elem system))
      system      
      )
  )

#|
 Descripción: Funcion que desloguea a un usuario logueado
 Tipo de algoritmo/estrategia: quita el login de un usuario
 Tipo de recursión: N/A
 Dominio: system 
 Recorrido: system
|#
(define (system-logout system)
  
  (list (1_elem system) (2_elem system) (3_elem system) (4_elem system) (list (1_elem (5_elem system)) "sin_login"  (3_elem (5_elem system)))
        (6_elem system) (7_elem system))
  
  )
