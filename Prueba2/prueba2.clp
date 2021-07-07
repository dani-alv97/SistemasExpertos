(defrule CesareaAntemano
(or (bebe-en-posicion-podalica)
   (madre-padece-gestosisi)
   (madre-padece-diabetes-gravidica)
   (placenta-en-posicion-previa-central)
   (madre-tiene-problemas-corazon)
   (madre-tiene-problemas-renales)
   (madre-tiene-graves-infecciones-en-vias-genitales)
   )
=>
(assert(es-CesariaAntemano))
(printout t "La paciente debe realizarse una cesarea prevista" crlf)
)

(defrule Cesariaimprovisa
(or(cabeza-del-nino-es-demasiado-grande)
   (cabeza-del-nino-no-encaja-correctamente)
   (existe-sufrimiento-fetal)
   (placenta-en-posicion-previa-central)
   )
=>
(assert(es-CesariaImprovisada))
(printout t "La paciente debe realizarse una cesarea improvisada" crlf)
)


(defrule incisionUmbilico
(or(cesarea-no-programada)
   (placenta-se-ha-desprendido)
   (la-incision-es-vertical)
   )
=>
(assert(es-IncisionUmbilica))
(printout t "se debe realizar una incision Umbilico Pubica" crlf)
)


(defrule trasnversalBaja
(or(incision-horizontal-cicatriz-no-visible)
 )
=>
(assert(es-TransversalBaja))
(printout t "cesarea de tipo trasnversal baja cicatriz no visible" crlf)
)


(defrule JoelCoell
(or(incision-es-horizontal)
  )
=>
(assert(es-JoelCoell))
(printout t "cesarea de tipo Joel Coell" crlf)
)


(defrule pregunta1
(respuesta1 bebe-en-posicion-podalica)
=>
(assert (bebe-en-posicion-podalica))
)

(defrule pregunta2
(respuesta1 madre-padece-gestosisi)
=>
(assert (madre-padece-gestosisi))
)


(defrule pregunta3
(respuesta1 madre-padece-diabetes-gravidica)
=>
(assert (madre-padece-diabetes-gravidica))
)


(defrule pregunta4
(respuesta1 placenta-en-posicion-previa-central)
=>
(assert (placenta-en-posicion-previa-central))
)


(defrule pregunta5
(respuesta1 madre-tiene-problemas-corazon)
=>
(assert (madre-tiene-problemas-corazon))
)


(defrule pregunta6
(respuesta1 madre-tiene-problemas-renales)
=>
(assert (madre-tiene-problemas-renales))
)

(defrule pregunta7
(respuesta1 madre-tiene-graves-infecciones-en-vias-genitales)
=>
(assert (madre-tiene-graves-infecciones-en-vias-genitales))
)


(defrule pregunta8
(respuesta1 cabeza-del-nino-es-demasiado-grande)
=>
(assert (cabeza-del-nino-es-demasiado-grande))
)


(defrule pregunta9
(respuesta1 cabeza-del-nino-no-encaja-correctamente)
=>
(assert (cabeza-del-nino-no-encaja-correctamente))
)


(defrule pregunta10
(respuesta1 existe-sufrimiento-fetal)
=>
(assert (existe-sufrimiento-fetal))
)


(defrule pregunta11
(respuesta1 placenta-en-posicion-previa-central)
=>
(assert (placenta-en-posicion-previa-central))
)

(defrule pregunta12
(respuesta1 cesarea-no-programada)
=>
(assert (cesarea-no-programada))
)

(defrule pregunta13
(respuesta1 placenta-se-ha-desprendido)
=>
(assert (placenta-se-ha-desprendido))
)

(defrule pregunta14
(respuesta1 la-incision-es-vertical)
=>
(assert (la-incision-es-vertical))
)


(defrule pregunta15
(respuesta1 incision-horizontal-cicatriz-no-visible)
=>
(assert (incision-horizontal-cicatriz-no-visible))
)

(defrule pregunta16
(respuesta1 incision-es-horizontal)
=>
(assert (incision-es-horizontal))
)


