use Usuario_Privilegios_Foro
go


-----TABLA USUARIOS
create table usuario(
id_usuario varchar (50),
nombre varchar (50),
apellidoPat varchar(50),
apellidoMat varchar (50),
claveUser int,
fechaCreacion date,
estado varchar(10),
Email varchar(50)
CONSTRAINT PK_usuario primary key(id_usuario))


-----TABLA MENU------
create table menu(
id_menu varchar(10),
titulo varchar(50),
descripcion varchar(200),
estado varchar(10),
orden int,
CONSTRAINT PK_menu primary key(id_menu))


----TABLA OPCION--------
create table opcion(
id_opcion varchar (10),
id_menu varchar (10),
titulo varchar(50),
descripcion varchar(200),
estado varchar(10),
ordenOpcion int,
CONSTRAINT PK_opcion primary key(id_opcion,id_menu),
CONSTRAINT FK_opcion foreign key(id_menu) references menu(id_menu))


-----TABLA SUB-OPCION-------
create table sub_opcion(
id_menu	varchar(10),
id_opcion	varchar(10),
id_sub_opcion	varchar(10),
titulo	varchar(50),
descripcion	varchar(200),
estado	varchar(10),
ordenSubOp	int,
Primary key (id_menu, id_opcion),
foreign key (id_opcion,id_menu) references opcion (id_opcion,id_menu))



----TABLA ROL------
create table rol(
id_rol	varchar(10),
titulo	varchar(50),
descripcion	varchar(200),
estado	varchar(10),
CONSTRAINT PK_rol primary key(id_rol))


----TABLA ROL-MENU-------
create table rol_Menu(
id_rol	varchar(10),
id_menu	varchar(10),
id_opcion	varchar(10),
id_sub_opcion	varchar(10),
Primary key (id_rol, id_menu, id_opcion,id_sub_opcion),
foreign key (id_rol) references rol(id_rol),
foreign key (id_opcion,id_menu) references opcion(id_opcion,id_menu))


-----TABLA ROL-USUARIO-------
create table rol_Usuario(
id_usuario	varchar(50),
id_rol	varchar(10),
Primary key (id_usuario, id_rol),
foreign key (id_usuario) references usuario(id_usuario),
foreign key (id_rol) references rol(id_rol))


------SELECT---------
SELECT * FROM usuario
SELECT * FROM menu
SELECT * FROM opcion
SELECT * FROM sub_opcion
SELECT * FROM rol
SELECT * FROM rol_Menu
SELECT * FROM rol_Usuario

