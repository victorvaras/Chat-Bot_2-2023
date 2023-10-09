#lang racket
;(require "Extras.rkt")
(require "Option_21091719_VarasVargas.rkt")
(require "Flow_21091719_VarasVargas.rkt")
(require "ChatBot_21091719_VarasVargas.rkt")
(require "System_21091719_VarasVargas.rkt")
(require "User_21091719_VarasVargas.rkt")

;-------------------------------------------------
;-------------------------------------------------
; --------- Scrip de prueba entregado-------------
;-------------------------------------------------
;-------------------------------------------------

;Ejemplo de un sistema de chatbots basado en el esquema del enunciado general
;Chabot0
(define op1 (option  1 "1) Viajar" 1 1 "viajar" "turistear" "conocer"))
(define op2 (option  2 "2) Estudiar" 2 1 "estudiar" "aprender" "perfeccionarme"))
(define f10 (flow 1 "Flujo Principal Chatbot 1\nBienvenido\n¿Qué te gustaría hacer?" op1 op2 op2 op2 op2 op1)) ;solo añade una ocurrencia de op2 y op1
(define f11 (flow-add-option f10 op1)) ;se intenta añadir opción duplicada            
(define cb0 (chatbot 0 "Inicial" "Bienvenido\n¿Qué te gustaría hacer?" 1 f10 f10 f10 f10))  ;solo añade una ocurrencia de f10
;Chatbot1
(define op3 (option 1 "1) New York, USA" 1 2 "USA" "Estados Unidos" "New York"))
(define op4 (option 2 "2) París, Francia" 1 1 "Paris" "Eiffel"))
(define op5 (option 3 "3) Torres del Paine, Chile" 1 1 "Chile" "Torres" "Paine" "Torres Paine" "Torres del Paine"))
(define op6 (option 4 "4) Volver" 0 1 "Regresar" "Salir" "Volver"))
;Opciones segundo flujo Chatbot1
(define op7 (option 1 "1) Central Park" 1 2 "Central" "Park" "Central Park"))
(define op8 (option 2 "2) Museos" 1 2 "Museo"))
(define op9 (option 3 "3) Ningún otro atractivo" 1 3 "Museo"))
(define op10 (option 4 "4) Cambiar destino" 1 1 "Cambiar" "Volver" "Salir")) 
(define op11 (option 1 "1) Solo" 1 3 "Solo")) 
(define op12 (option 2 "2) En pareja" 1 3 "Pareja"))
(define op13 (option 3 "3) En familia" 1 3 "Familia"))
(define op14 (option 4 "4) Agregar más atractivos" 1 2 "Volver" "Atractivos"))
(define op15 (option 5 "5) En realidad quiero otro destino" 1 1 "Cambiar destino"))
(define f20 (flow 1 "Flujo 1 Chatbot1\n¿Dónde te Gustaría ir?" op3 op4 op5 op6))
(define f21 (flow 2 "Flujo 2 Chatbot1\n¿Qué atractivos te gustaría visitar?" op7 op8 op9 op10))
(define f22 (flow 3 "Flujo 3 Chatbot1\n¿Vas solo o acompañado?" op11 op12 op13 op14 op15))
(define cb1 (chatbot 1 "Agencia Viajes"  "Bienvenido\n¿Dónde quieres viajar?" 1 f20 f21 f22))
;Chatbot2
(define op16 (option 1 "1) Carrera Técnica" 2 1 "Técnica"))
(define op17 (option 2 "2) Postgrado" 2 1 "Doctorado" "Magister" "Postgrado"))
(define op18 (option 3 "3) Volver" 0 1 "Volver" "Salir" "Regresar"))

(define f30 (flow 1 "Flujo 1 Chatbot2\n¿Qué te gustaría estudiar?" op16 op17 op18))
(define cb2 (chatbot 2 "Orientador Académico"  "Bienvenido\n¿Qué te gustaría estudiar?" 1 f30))
;Sistema
(define s0 (system "Chatbots Paradigmas" 0 cb0 cb0 cb0 cb1 cb2))
(define s1 (system-add-chatbot s0 cb0)) ;igual a s0
(define s2 (system-add-user s1 "user1"))
(define s3 (system-add-user s2 "user2"))
(define s4 (system-add-user s3 "user2"))
(define s5 (system-add-user s4 "user3"))
(define s6 (system-login s5 "user8"))
(define s7 (system-login s6 "user1"))
(define s8 (system-login s7 "user2"))
(define s9 (system-logout s8))
(define s10 (system-login s9 "user2"))

(define s11 (system-talk-rec s10 "hola"))
(define s12 (system-talk-rec s11 "1"))
(define s13 (system-talk-rec s12 "1"))
(define s14 (system-talk-rec s13 "Museo"))
(define s15 (system-talk-rec s14 "1"))
(define s16 (system-talk-rec s15 "3"))
(define s17 (system-talk-rec s16 "5"))
;(display (system-synthesis s17 "user2"))
;(system-simulate s0 5 32131)




;-------------------------------------------------
;-------------------------------------------------
; ----------- Scrip de prueba nuevo --------------
;-------------------------------------------------
;-------------------------------------------------


;Bot 0

(define OP01 (option 1 "1) Comprar" 1 1 "comprar" "adquirir"))
(define OP02 (option 2 "2) Arrendar" 3 1 "arrendar" "rentar" "alquilar"))

(define F01 (flow 1 "Flujo Principal Chatbot 0\nBienvenido\n¿Qué te gustaría hacer?" OP01))
(define F02 (flow-add-option F01 OP01))
(define F03 (flow-add-option F02 OP02))

(define CB0 (chatbot 0 "Automotora" "Bienvenido\n¿Qué te gustaría hacer?" 1 F03 F03))


;Bot 1

(define OP11 (option 1 "1) Contado" 0 1 "contado" "efectivo" "cheque"))
(define OP12 (option 2 "2) Credito" 0 1 "credito" "financiamiento" "cuotas"))

(define F11 (flow 1 "flujo 1 chatbot 1\n ¿Que modo de pago desea?" OP11))
(define F12 (flow-add-option F11 OP12))

(define CB1 (chatbot 1 "Modo de pago" 1 F12))




;system

(define S0 (system "Chatbots prueba automotora" 0 CB0))
(define S1 (system-add-chatbot S0 CB1))
(define S2 (system-login S1 "user2"))
(define S3 (system-add-user S2 "victor"))
(define S4 (system-add-user S3 "victor"))
(define S5 (system-add-user S4 "hugo"))
(define S6 (system-login S5 "hugo"))
(define S7 (system-logout S6))
(define S8 (system-login S7 "victor"))


(define S9 (system-talk-rec S8 "buenas"))
(define S10 (system-talk-rec S9 "1"))
(define S11 (system-talk-rec S9 "comprar"));igual a S9


