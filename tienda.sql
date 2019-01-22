drop database if exists tienda;

create database tienda;

use tienda;

create table perfiles (
idperfil int primary key,
descrripcion varchar(30)
 );
insert into perfiles values(1,'ADMINISTRADOR');
insert into perfiles values(2,'USUARIO');

create table usuarios(
 nombreusuario character varying(16) primary key not null,
 clave character varying(16) not null,
 nombre1 character varying (20) not null,
 nombre2 character varying (20) null,
 apellidop character varying (20) not null,
 apellidon character varying (20) not null,
 correo character varying (50) not null unique, 
 foto character varying (50)  default 'client_01.jpg',
 direccion character varying (100) not null,
 dni character varying (50) not null,
 idperfil int not null default 1,
 constraint fk_u_p foreign key (idperfil) references perfiles(idperfil) on update cascade on delete restrict
);

insert into usuarios values('admin','123456','Admin','','Admin','','ym@gmail.com','jpg','BABAHOYO','1234567890',1);
insert into usuarios values('user','123456','User','','user','','y3m@gmail.com','jpg','BABAHOYO','1234567890',1);



select * from usuarios;


create table tipo(
idtipo int not null primary key,
descripcion character varying(20) not null
);

insert into tipo values(1,'Productos');


create table categorias(
 idcategorias int not null primary key,
 descripcion character varying(25),
 imagen character varying(25)
);

select * from categorias;

insert into categorias values(1,'VESTIDOS','banner-02.jpg');
insert into categorias values(2,'BLUSAS','f.jpg');
insert into categorias values(3,'BOLSOS','banner-10.jpg');
insert into categorias values(4,'ACCESORIOS','banner-05.jpg');
insert into categorias values(5,'PANTALONES','banner-06.jpg');
insert into categorias values(6,'CALZADO','banner-07.jpg');

create table items(
 iditem int not null primary key auto_increment,
 nombre character varying(50) not null,
 descripcion character varying(100) not null,
 descripcion2 character varying(1000) ,
 precio float,
 descuento float default 0,
 idtipo int not null default 1,
 constraint fk_t_i foreign key (idtipo) references tipo(idtipo) on update cascade on delete restrict ,
 idcategorias int not null,
 constraint fk_c_i foreign key(idcategorias) references categorias(idcategorias) on update cascade on delete restrict,
 imagen character varying(50),
 stock int,
 rate float default 0,
 nombreusuario character varying(16),
 constraint fk_u_i foreign key(nombreusuario) references usuarios(nombreusuario) on update cascade on delete restrict
);


insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate,nombreusuario) values(default,'Balon futbol','Balon Origianl','Garantizado',100.00,0.00,1,1,'item-02.jpg',5,default,'user');
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate,nombreusuario) values(default,'Balon Basket','Semi Original','Para entrenamiento',30.50,0,1,1,'item-03.jpg',5,default,'user');
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate,nombreusuario) values(default,'Pelotas de Tenis','Resitentes','Venta al por mayor o unidad',5.90,0,1,1,'item-cart-05.jpg',5,default,'user');




insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate,nombreusuario)values(default,'Camisa Barcelona','Original','Directa de España',100.00,0,1,1,'item-17.jpg',5,default,'admin');
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate,nombreusuario)values(default,'Camisa Ecuador','Oficial','Nueva',50.50,0,1,1,'item-09.jpg',5,default,'admin');
insert into items(iditem,nombre,descripcion,descripcion2,precio,descuento,idtipo,idcategorias,imagen,stock,rate,nombreusuario) values(default,'Pupos Nike','Originales','Pide tu talla',140.50,0,1,1,'item-14.jpg',5,default,'admin');



select * from items;



 create table imagenes(
  idimagen int primary key auto_increment,
  nombre character varying (50) not null,
  tipo character varying (20),
  archivo LONGBLOB,
  iditem int not null, 
  constraint foreign key (iditem) references items(iditem)  on delete restrict on update cascade
 );

select * from items;

 insert into imagenes values (default,'Aromachology-Repairing-Mask-1.jpg','jpg','',1);
 insert into imagenes values (default,'Aromachology-Repairing-Mask-2.jpg','png','',1);

 
create table ventas(
 idventa bigint not null primary key auto_increment,
 nombreusuario character varying(16),
 constraint fk_v_c foreign key(nombreusuario) references usuarios(nombreusuario) on update cascade on delete restrict, 
 fecha timestamp not null default current_timestamp,
 total float default 0
);

create table detalleventa(
 idventa bigint not null,
 constraint fk_dt_v foreign key(idventa) references ventas(idventa) on update cascade on delete restrict,
 iditem int not null,
 constraint fk_dt_i foreign key(iditem) references items(iditem) on update cascade on delete restrict,
 cantidad int not null,
 precio float not null,
 descuento float not null, 
 iva float not null default 12
);

SET GLOBAL log_bin_trust_function_creators = 1;
-- DROP FUNCTION IF EXISTs insertarventa;
DELIMITER //
CREATE  FUNCTION insertarventa(nombre varchar(50)) RETURNS bigint  
  begin   
    declare id bigint default 1;   
   insert into ventas(idventa, nombreusuario,fecha) values(default,nombre,default);
   select last_insert_id() into id; 
   return id;
  end
//

create table reservaciones(
 idreserva int not null primary key ,
 nombreusuario character varying(16)  , 
 fecha date not null,
 hora time not null,
 total float default 0
);


create table detallereservacion(
 idcompra int not null ,
 -- references reservaciones on update cascade on delete restrict,
 idtem int not null ,
 -- references items on update cascade on delete restrict,
 cantidad int not null,
 precio float not null,
 descuento float not null, 
 iva float 
 );
 
 