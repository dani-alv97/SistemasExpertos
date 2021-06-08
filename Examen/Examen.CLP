(deftemplate animal
	(field nombre)
	(multifield tiene)
	(multifield carnivoro)
	(multifield acciones)
	(multifield vuela)
	(multifield color)
	(multifield caracteristicas)
)
(deftemplate vertebrado
	(field tipo_vertebrado)

)
(deftemplate tipo
	(field tipo_animal)
)

(deftemplate alimentacion
	(field tipo_alimentacion)
)

(defrule inicio
	(initial-fact)
	=>
	(printout t "Nombre animal:" crlf)
	(bind ?nombre (read))
	(printout t "El animal, tiene (pelos/da leche) o tiene (plumas/pone huevos)" crlf)
	(bind ?tiene (readline))
	(printout t "El animal come (carne) o tiene (dientes puntiagudos/garras/ojos al frente )" crlf)
	(bind ?carnivoro (readline))
	(printout t "El animal rumea o tiene pezunas (si/no)" crlf)
	(bind ?acciones (readline))
	(printout t "El animal vuela (bien/no vuela nada/no vuela)" crlf)
	(bind ?vuela (readline))
	(printout t "Animal de color (blanco y negro/leonado con rayas negras/rayas negras/manchas oscuras)" crlf)
	(bind ?color (readline))
	(printout t "Carateristicas particulares como (cuello largo y piernas largas)" crlf)
	(bind ?caracteristicas (readline))
	(assert (animal (nombre ?nombre)(tiene ?tiene)(carnivoro ?carnivoro)(vuela ?vuela)(acciones ?acciones)(color ?color)(caracteristicas 
	?caracteristicas)))
)

(defrule R1
	(animal (nombre ?nombre)(tiene "pelos"|"da leche")(carnivoro ?)(acciones ?)(vuela ?)(color ?)(caracteristicas ?))
	=>
	(printout t ?nombre" -->Es Mamifero" crlf)
	(assert (vertebrado (tipo_vertebrado mamifero)))
)
(defrule R2
	(animal (nombre ?nombre)(tiene "plumas"|"pone huevos")(carnivoro ?)(acciones ?)(vuela ?)(color ?)(caracteristicas ?))
	=>
	(printout t ?nombre" -->Es una ave" crlf)
	(assert (vertebrado (tipo_vertebrado ave)))
)
(defrule R3
	(animal (nombre ?nombre)(tiene "no")(carnivoro ?)(acciones ?)(vuela ?)(color ?)(caracteristicas ?))
	=>
	(printout t ?nombre" -->No es ni ave ni mamifero" crlf)
	(assert (vertebrado (tipo_vertebrado nose)))
)
(defrule R4
	(animal (nombre ?nombre)(tiene ?)(carnivoro "carne"|"dientes puntiagudos"|"garras"|"ojos al frente")(acciones ?)(vuela ?)(color ?)(caracteristicas ?))
	=>
	(printout t ?nombre" -->Es un carnivoro" crlf)
	(assert (alimentacion (tipo_alimentacion carnivoro)))
)
(defrule R5
	(animal (nombre ?nombre)(tiene ?)(carnivoro "no")(acciones ?)(vuela ?)(color ?)	(caracteristicas ?))
	=>
	(printout t ?nombre" -->Es un hervivoro" crlf)
	(assert (alimentacion (tipo_alimentacion hervivoro)))
)
(defrule R5
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones "si")(vuela ?)(color ?)	(caracteristicas ?))
	=>
	(printout t ?nombre" -->Es un ungulado" crlf)
	(assert (tipo (tipo_animal ungulado)))
)
(defrule R5
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones "no")(vuela ?)(color ?)	(caracteristicas ?))
	=>
	(printout t ?nombre" -->No es un ungulado" crlf)
	(assert (tipo (tipo_animal noungulado)))
)
(defrule R6
	(vertebrado (tipo_vertebrado mamifero))
	(alimentacion (tipo_alimentacion carnivoro))
    (tipo (tipo_animal noungulado))
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones ?)(vuela ?)(color "leonado con rayas negras")(caracteristicas ?))
	=>
	(printout t ?nombre ", es un TIGRE")
)
(defrule R7
	(vertebrado (tipo_vertebrado mamifero))
	(alimentacion (tipo_alimentacion carnivoro))
    (tipo (tipo_animal noungulado))
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones ?)(vuela ?)(color "leonado con manchas oscuras")(caracteristicas ?))
	=>
	(printout t ?nombre ", es un LEOPARDO")
)
(defrule R7
	(vertebrado (tipo_vertebrado mamifero))
	(alimentacion (tipo_alimentacion hervivoro))
    (tipo(tipo_animal ungulado))
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones ?)(vuela ?)(color "manchas oscuras")(caracteristicas "cuello largo y piernas largas"))
	=>
	(printout t ?nombre ", es una JIRAFA")
	
)
(defrule R8
	(vertebrado (tipo_vertebrado mamifero))
	(alimentacion (tipo_alimentacion hervivoro))
    (tipo(tipo_animal ungulado))
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones ?)(vuela ?)(color "rayas negras")(caracteristicas ?))
	=>
	(printout t ?nombre ", es una CEBRA")
	
)
(defrule R9
	(vertebrado (tipo_vertebrado ave))
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones ?)(vuela "no vuela")(color "blanco y negro")
	(caracteristicas "cuello largo y piernas largas"))
	=>
	(printout t ?nombre ", es una AVESTRUZ" crlf)
)
(defrule R10
	(vertebrado (tipo_vertebrado ave))
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones ?)(vuela "no vuela nada")(color "blanco y negro")(caracteristicas ?))
	=>
	(printout t ?nombre ", es un PINGUINO" crlf)
)
(defrule R11
	(vertebrado (tipo_vertebrado ave))
	(animal (nombre ?nombre)(tiene ?)(carnivoro ?)(acciones ?)(vuela "vuela bien")(color ?)(caracteristicas ?))
	=>
	(printout t ?nombre ", es un ALBATROS" crlf)
)