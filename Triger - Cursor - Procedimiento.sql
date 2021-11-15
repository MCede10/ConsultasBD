/*--Cursor que muestre a los clientes que hayan reservado una habitación y
--hayan hecho el pago en efectivo
do $$
declare 
Registro record;
cur_nombres Cursor for select
*
from Cliente
Inner Join public.persona on persona.p_id = cliente.p_id
where Cliente.C_metopago = 'efectivo';
begin 
for registro in cur_nombres loop
Raise Notice 'Id: % Nombre:%  Pago:%',
			registro.C_ID, registro.P_nombre, registro.C_metopago;
end loop;
end $$
Language 'plpgsql';*/

/*--Procedimiento almacenado que permita ingresar un horario (tarde-Mañana) de los
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
*/
Create Table Auditoria
-- 1) Un trigger que actualice el metodo de pago de un cliente
Create or replace function insertar_trigger() RETURNS TRIGGER AS $insertar$
DECLARE BEGIN
RETURN NULL;
END;
$insertar$ LANGUAGE plpgsql;

--2) Crear un triiger para actualizar el metodo de pago
CREATE TRIGGER actualizar AFTER UPDATE
on Cliente for each row
EXECUTE PROCEDURE  insertar_trigger();
--3) Comprobar los datos
select * from cliente
--4) Actualizar el metodo de pago de cliente 2 a tarjeta a efectivo
Update Cliente
set C_metopago = 'efectivo'
where c_id = 2 and C_metopago = 'tarjeta'
--5)Combrobar los cambios
select * from cliente order by c_id






