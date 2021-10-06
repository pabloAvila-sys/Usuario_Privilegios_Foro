use Usuario_Privilegios_Foro
go

---INSERT TABLA USUARIO---
SELECT * FROM usuario

insert usuario select 'pavila','Pablo', 'Avila', 'Cornejo', 12345, '20211001', 'ACTIVO','pavila@protonmail.com'
insert usuario select 'dafa','Diego', 'Fernandez', 'Adriazola', 11223, '20211001', 'ACTIVO','dafa@protonmail.com'
insert usuario select 'cami','Camila', 'Becerra', 'Becerra', 121212, '20211001', 'ACTIVO','camiia@gmail.com'
insert usuario select 'cris','Cristian', 'Avila', 'Cornejo', 55555, '20211002', 'ACTIVO','crisAC@outlook.com'
insert usuario select 'hector','Rodrigo', 'Avila', 'Cornejo', 22222, '20211002', 'ACTIVO','hectorA@gmail.com'

insert usuario select 'mati','Matias', 'Avila', 'Correa', 2022, '20211003', 'ACTIVO','matiOP@hotmail.com'
insert usuario select 'ignacia','Maria', 'Avila', 'Correa', 808080, '20211004', 'NO ACTIVO','mignacia@protonmail.com'
insert usuario select 'yhacore','Yhacore', 'Cid', 'Tobar', 99999, '20211004', 'NO ACTIVO','yhacore@protonmail.com'
insert usuario select 'jp','Juan Pablo', 'Aliaga', 'Barriga', 44444, '20211004', 'NO ACTIVO','jpbarriga@gmail.com'
insert usuario select 'Rolando','Rolando', 'Cocio', 'Norambuena', 131313, '20211004', 'NO ACTIVO','roland@txomail.com'


--INSERT MENU-----
SELECT * FROM menu

insert menu select 'Menu01', 'Control de Acceso', '', 'ACTIVO', 1
insert menu select 'Menu02', 'Menu Mi', '', 'ACTIVO', 2
insert menu select 'Menu03', 'Ingreso Usuario', '', 'ACTIVO', 3
insert menu select 'Menu04', 'Blogs de Noticias', '', 'ACTIVO', 4
insert menu select 'Menu05', 'Foro de Mensajes', '', 'ACTIVO', 5
insert menu select 'Menu06', 'Otros Servicios', '', 'ACTIVO', 6
insert menu select 'Menu07', 'Comunidades', '', 'ACTIVO', 7

----INSERT OPCION-----
SELECT * FROM opcion

insert opcion select 'OP01','Menu01', 'Aministrar Usuario', '', 'ACTIVO', 1
insert opcion select 'OP02','Menu01', 'Administrar Rol', '', 'ACTIVO', 2
insert opcion select 'OP03','Menu02', 'Aministrar Menu', '', 'ACTIVO', 3
insert opcion select 'OP04','Menu03', 'Entrar', '', 'ACTIVO', 4
insert opcion select 'OP05','Menu03', 'Registrarse', '', 'ACTIVO', 5
insert opcion select 'OP06','Menu04', 'Administrar Noticias', '', 'ACTIVO', 6
insert opcion select 'OP07','Menu05', 'Administrar Mensajes', '', 'ACTIVO', 7
insert opcion select 'OP08','Menu05', 'Administrar Fotos', '', 'ACTIVO', 8
insert opcion select 'OP09','Menu06', 'Administrar Servicios', '', 'ACTIVO', 9
insert opcion select 'OP10','Menu07', 'Administrar Comunidades', '', 'ACTIVO', 10

----INSERT SUB_OPCION-----

SELECT * FROM sub_opcion

insert sub_opcion select 'Menu01','OP01','SUBOP01-1', 'Crear usuario', '', 'ACTIVO', 1
insert sub_opcion select 'Menu01','OP01','SUBOP01-2', 'Modificar Usuario', '', 'ACTIVO', 2
insert sub_opcion select 'Menu01','OP01','SUBOP01-3', 'Consultar Usuario', '', 'ACTIVO', 3
insert sub_opcion select 'Menu01','OP01','SUBOP01-4', 'Eliminar Usuario', '', 'ACTIVO', 4
insert sub_opcion select 'Menu01','OP02','SUBOP02-1', 'Crear Rol', '', 'ACTIVO', 5
insert sub_opcion select 'Menu01','OP02','SUBOP02-2', 'Asignar Privilegios Rol', '', 'ACTIVO', 6
insert sub_opcion select 'Menu02','OP03','SUBOP03-1', 'Crear Menu', '', 'ACTIVO', 7
insert sub_opcion select 'Menu02','OP03','SUBOP03-2', 'Consultar Menu', '', 'ACTIVO', 8
insert sub_opcion select 'Menu03','OP04','','', '', 'NO ACTIVO', 9
insert sub_opcion select 'Menu03','OP05','','', '', 'NO ACTIVO', 10
insert sub_opcion select 'Menu04','OP06','SUBOP06-1', 'Crear Noticia', '', 'ACTIVO',11
insert sub_opcion select 'Menu04','OP06','SUBOP06-2', 'Modificar Noticia', '', 'ACTIVO', 12
insert sub_opcion select 'Menu04','OP06','SUBOP06-3', 'Eliminar Noticia', '', 'ACTIVO', 13
insert sub_opcion select 'Menu05','OP07','SUBOP07-1', 'Crear Mensajes', '', 'ACTIVO', 14
insert sub_opcion select 'Menu05','OP07','SUBOP07-2', 'Modificar Mensajes', '', 'ACTIVO', 15
insert sub_opcion select 'Menu05','OP07','SUBOP07-3', 'Eliminar Mensajes', '', 'ACTIVO', 16
insert sub_opcion select 'Menu05','OP08','SUBOP08-1', 'Subir Fotos', '', 'ACTIVO', 17
insert sub_opcion select 'Menu05','OP08','SUBOP08-2', 'Eliminar Fotos', '', 'ACTIVO', 18
insert sub_opcion select 'Menu06','OP09','SUBOP09-1', 'Ingresar Servicio', '', 'ACTIVO', 19
insert sub_opcion select 'Menu06','OP09','SUBOP09-2', 'Modificar Servicio', '', 'ACTIVO', 20
insert sub_opcion select 'Menu06','OP09','SUBOP09-3', 'Eliminar Servicio', '', 'ACTIVO', 21
insert sub_opcion select 'Menu07','OP10','SUBOP10-1', 'Crear Comunidad', '', 'ACTIVO', 22
insert sub_opcion select 'Menu07','OP10','SUBOP10-2', 'Consultar Comunidad', '', 'ACTIVO', 23
insert sub_opcion select 'Menu07','OP10','SUBOP10-3', 'Eliminar Comunidad', '', 'ACTIVO', 24


----INSERT ROL---------

SELECT * FROM rol

insert rol select 'R01', 'Administrador','', 'ACTIVO'
insert rol select 'R02', 'Colaborador','', 'ACTIVO'
insert rol select 'R03', 'Usuario','', 'ACTIVO'

-----INSERT ROL_MENU------

SELECT * FROM rol_Menu

insert rol_Menu select 'R01', 'Menu01', 'OP01','SUBOP01-1'
insert rol_Menu select 'R01', 'Menu01', 'OP01','SUBOP01-2'
insert rol_Menu select 'R01', 'Menu01', 'OP01','SUBOP01-3'
insert rol_Menu select 'R01', 'Menu01', 'OP01','SUBOP01-4'
insert rol_Menu select 'R01', 'Menu01', 'OP02','SUBOP02-1'
insert rol_Menu select 'R01', 'Menu01', 'OP02','SUBOP02-2'
insert rol_Menu select 'R01', 'Menu02', 'OP03','SUBOP03-1'
insert rol_Menu select 'R01', 'Menu02', 'OP03','SUBOP03-2'
insert rol_Menu select 'R01', 'Menu03', 'OP04',''
insert rol_Menu select 'R01', 'Menu03', 'OP05',''
insert rol_Menu select 'R03', 'Menu03', 'OP04',''
insert rol_Menu select 'R03', 'Menu03', 'OP05',''

insert rol_Menu select 'R01', 'Menu04', 'OP06','SUBOP06-1'
insert rol_Menu select 'R03', 'Menu04', 'OP06','SUBOP03-1'
insert rol_Menu select 'R01', 'Menu04', 'OP06','SUBOP06-2'
insert rol_Menu select 'R01', 'Menu04', 'OP06','SUBOP06-3'

insert rol_Menu select 'R01', 'Menu05', 'OP07','SUBOP07-1'
insert rol_Menu select 'R03', 'Menu05', 'OP07','SUBOP07-1'
insert rol_Menu select 'R01', 'Menu05', 'OP07','SUBOP07-2'
insert rol_Menu select 'R03', 'Menu05', 'OP07','SUBOP07-2'
insert rol_Menu select 'R01', 'Menu05', 'OP07','SUBOP07-3'
insert rol_Menu select 'R01', 'Menu05', 'OP08','SUBOP08-1'
insert rol_Menu select 'R03', 'Menu05', 'OP08','SUBOP08-1'
insert rol_Menu select 'R01', 'Menu05', 'OP08','SUBOP08-2'


insert rol_Menu select 'R02', 'Menu06', 'OP09','SUBOP09-1'
insert rol_Menu select 'R02', 'Menu06', 'OP09','SUBOP09-2'
insert rol_Menu select 'R02', 'Menu06', 'OP09','SUBOP09-3'

insert rol_Menu select 'R01', 'Menu07', 'OP10','SUBOP10-1'
insert rol_Menu select 'R03', 'Menu07', 'OP10','SUBOP10-1'
insert rol_Menu select 'R01', 'Menu07', 'OP10','SUBOP10-2'
insert rol_Menu select 'R03', 'Menu07', 'OP10','SUBOP10-2'
insert rol_Menu select 'R01', 'Menu07', 'OP10','SUBOP10-3'


-----INSERT ROL_USUARIO-----

SELECT * FROM rol_Usuario

insert rol_Usuario select 'pavila','R01'
insert rol_Usuario select 'dafa','R02'
insert rol_Usuario select 'cami','R01'
insert rol_Usuario select 'cris','R02'
insert rol_Usuario select 'hector','R01'

insert rol_Usuario select 'mati','R03'
insert rol_Usuario select 'ignacia','R03'
insert rol_Usuario select 'yhacore','R03'
insert rol_Usuario select 'jp','R03'
insert rol_Usuario select 'Rolando','R03'

------SELECT---------
SELECT * FROM usuario
SELECT * FROM menu
SELECT * FROM opcion
SELECT * FROM sub_opcion
SELECT * FROM rol
SELECT * FROM rol_Menu
SELECT * FROM rol_Usuario

