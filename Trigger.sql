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
