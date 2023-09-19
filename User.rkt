#lang racket

(require "Extras.rkt")
(require "Option.rkt")
(require "Flow.rkt")
(require "ChatBot.rkt")
(require "System.rkt")
(provide(all-defined-out))


;TDA user
;("user", usuario_login ,(list asuarios)


(define (system-add-user system user)

  (if (null? (5_elem system))
      (list (1_elem system)(2_elem system) (3_elem system) (4_elem system)
            (list "user" "sin_login" (list user)))

      (list (1_elem system)(2_elem system) (3_elem system) (4_elem system)
            (list "user" (2_elem (5_elem system)) (remove-duplicates (append (caddr(5_elem system)) (list user)))))
      ))



#|

(define (system-login system user)

  (if (and (string=? (2_elem (5_elem system)) "sin_login" ) ) 
      
      )
  )
|#


(define s4 (system-add-user s1 "user1"))
(define s5 (system-add-user s4 "user2"))