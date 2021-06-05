(defrule tipo-robot-regla
(initial-fact)
=>
(printout t "Que configuracion tienes (peaton/carro)? " crlf)
(assert (tipo-robot (read)))
)

(defrule semaforo-tipo
(or  (tipo-robot peaton) (tipo-robot carro))
=>
(printout t "Color del semaforo" crlf)
(printout t "rojo/verde/amarrillo" crlf)
(assert (semaforo (read)))
)

(defrule pasar
(tipo-robot ?tipo)
(or (and (tipo-robot carro) (semaforo verde)) (and (tipo-robot peaton) (semaforo rojo)))
=>
(printout t "El robot " ?tipo " puede pasar" crlf)
)

(defrule precaucion
(tipo-robot ?tipo)
(semaforo amarrillo)
=>
(printout t "El robot " ?tipo " pasar con precaucion  (corre !!!)" crlf)
)

(defrule esperar
(tipo-robot ?tipo)
(or (and (tipo-robot carro) (semaforo rojo)) (and (tipo-robot peaton) (semaforo verde)))
=>
(printout t "El robot " ?tipo " no puede pasar esperar" crlf)
)

(defrule tipo-animal
(tipo-robot animal)
=>
(printout t "Tienes un 50% de morir o vivir" crlf)
)