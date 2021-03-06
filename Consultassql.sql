--Consulta 1
Select
RESERVASION.RE_ID,
PERSONA.P_nombre as Nombre,
PERSONA.P_apellido as Apellido,
RESERVASION.RE_tipo,
RESERVASION.RE_Fechaentrada
from RESERVASION
INNER JOIN PUBLIC.CLIENTE ON CLIENTE.C_ID=RESERVASION.C_ID
INNER JOIN PUBLIC.PERSONA ON PERSONA.P_ID=CLIENTE.P_ID
WHERE (RESERVASION.RE_Fechaentrada >='1/1/2020' and RESERVASION.RE_Fechaentrada <='31/12/2020')

--Consulta 2
Select
SERVICIO.SE_ID,
SERVICIO.SE_NOMBRE AS NOMBRE,
PROMOCION.PRO_NOMBRE,
PROMOCION.PRO_DESCUENTO
FROM PAQUETE
INNER JOIN PUBLIC.SERVICIO ON SERVICIO.SE_ID=PAQUETE.SE_ID
INNER JOIN PUBLIC.PROMOCION ON PROMOCION.PRO_ID=PAQUETE.PRO_ID


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

--Consulta 4
select
CLIENTE.C_id as ClienteID,
PERSONA.P_nombre as Nombre,
PERSONA.P_apellido as Apellido,
PAQUETE.Pa_Id as Paquete,
SERVICIO.Se_ID as Servicio,
SERVICIO.Se_Nombre as TipoServicio
from factura
INNER JOIN PUBLIC.RESERVASION ON RESERVASION.C_ID=FACTURA.C_ID
INNER JOIN PUBLIC.CLIENTE ON CLIENTE.C_ID=RESERVASION.C_ID
INNER JOIN PUBLIC.PERSONA ON PERSONA.P_ID=CLIENTE.P_ID
INNER JOIN PUBLIC.PAQUETE ON PAQUETE.PA_ID=FACTURA.PA_ID
INNER JOIN PUBLIC.SERVICIO ON SERVICIO.SE_ID=PAQUETE.SE_ID*/