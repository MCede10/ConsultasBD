--Procedimiento almacenado que permita ingresar un horario (tarde-Mañana) de los
--Recepcionista y este nos devuelva la cantidad de personas que trabajan en ese horario
create or replace function obtener_cantida_recepcion(
in horario_nombre varchar,
out total_recepciones varchar
)
as $BODY$
begin 
Select count(distinct Recepcionista.r_id) into total_recepciones
from recepcionista
where horario_nombre = R_horario;
end $BODY$
Language 'plpgsql';

--Ejecutar la siguiente linea de codigo para obtener resultados
Select * from obtener_cantida_recepcion('tarde')
