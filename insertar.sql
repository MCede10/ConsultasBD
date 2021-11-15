insert into PERSONA values (1,'Juan','Herrera',0986374520,'San Juan',1305784360);
insert into PERSONA values (2,'Roberto','Ortega',0986554250,'Manta',1325874103);
insert into PERSONA values (3,'Crisitian','Chavez',0987596320,'San Juan',1356024852);
insert into PERSONA values (4,'Fernando','Rodriquez',0986377896,'San Juan',1313696652);
insert into PERSONA values (5,'Isabel','Quijije',0986374528,'San Juan',1312454687);
insert into PERSONA values (6,'Mirian','Mendoza',0986374527,'San Juan',1377885549);
insert into PERSONA values (7,'Andres','Velez',0986374529,'San Juan',1388995563);
insert into PERSONA values (8,'Andrea','Torrez',0986374545,'San Juan',1322663320);
insert into PERSONA values (9,'Veronica','Arteaga',0986374547,'Jaramijo',1322663324);
insert into PERSONA values (10,'David','Cedeño',0986374578,'Monte',1322663323);
insert into PERSONA values (11,'Antony','Arango',0986374145,'Portoviejo',1322663322);
insert into PERSONA values (12,'Bryan','Montes',0986374540,'Manta',1322663321);
insert into PERSONA values (13,'Marcelo','Arces',0986374515,'Cuba',1322663350)


insert into ADIMINISTRADOR values (1,1,750);
insert into ADIMINISTRADOR values (2,2,550)

insert into RECEPCIONISTA VALUES (1,3,'Mañana');
insert into RECEPCIONISTA VALUES (2,4,'tarde');
insert into RECEPCIONISTA VALUES (3,5,'tarde')

insert into GUARDIA values (1,6,'mañana');
insert into GUARDIA values (2,7,'noche')


insert into CLIENTE	values (1,8,'efectivo');
insert into CLIENTE	values (2,9,'tarjeta');
insert into CLIENTE	values (3,10,'efectivo');
insert into CLIENTE	values (4,11,'transferencia');
insert into CLIENTE	values (5,12,'efectivo');
insert into CLIENTE	values (6,13,'efectivo')

insert into HABITACION values (1,'h1',3,'familiar');
insert into HABITACION values (2,'h2',3,'ejecutiva');
insert into HABITACION values (4,'h3',2,'matrimonial');
insert into HABITACION values (3,'h4',5,'familiar');
insert into HABITACION values (5,'h5',1,'individual')

insert into RESERVASION values (1,1,1,'aniversario','2020/11/15','2020/11/17','no dejo propina');
insert into RESERVASION values (2,2,2,'vacaciones','2010/07/10','2020/10/17','se robaron las toallas');
insert into RESERVASION values (3,3,3,'paseo','2019/01/11','2019/01/11','excelente');
insert into RESERVASION values (4,4,4,'negocios','2021/05/15','2020/10/17','regaron cafe');
insert into RESERVASION values (5,5,5,'familiar','2020/11/15','2020/07/17','no dejo propina')

insert into SERVICIO values (1,'limpieza');
insert into SERVICIO values (2,'mantenimiento');
insert into SERVICIO values (3,'servicio a la habitacion');
insert into SERVICIO values (4,'restaurante')

insert into PROMOCION values (1,'10% limpieza',10);
insert into PROMOCION values (2,'5% en bebidas',5)

select*from PROMOCION

insert into PAQUETE values (1,1,1);
insert into PAQUETE values (2,2,4)

insert into FACTURA values (1,1,1,1,'2020/11/17',100);
							   

