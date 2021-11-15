--Cursor que muestre a los clientes que hayan reservado una habitación y
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
Language 'plpgsql';