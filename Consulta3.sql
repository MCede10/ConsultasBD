
--Consulta 3
Select
GUARDIA.G_ID,
PERSONA.P_nombre as nombre,
PERSONA.P_apellido as apellido,
PERSONA.P_cedula as cedula,
GUARDIA.G_horario

from GUARDIA
INNER JOIN PUBLIC.PERSONA ON PERSONA.P_ID=GUARDIA.P_ID  
Where G_HORARIO = 'mañana'

