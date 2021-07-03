create database Inventario;
use Inventario;
create table cliente(
idCliente Bigint identity primary key,
Cliente varchar(50) not null
);
create table producto(
idProducto Bigint identity primary key,
Marca varchar(50) not null,
Producto varchar(50) not null
);

create table producto_categoria(
id_Producto Bigint ,
id_Categoria Bigint ,
primary key(id_Producto ,id_Categoria ),
foreign key(id_Categoria) references categoria(idCategoria),
foreign key(id_Producto) references producto(idProducto )
);

create table categoria(
idCategoria Bigint identity primary key,
Descripcion varchar(50) not null,
);
create table ventas(
id_cliente  Bigint not null,
id_producto  Bigint not null,
fecha date not null , 
cantidad int not null,
montototal int not null,
primary key(id_cliente,id_producto),
foreign key(id_cliente) references cliente(idCliente),
foreign key(id_producto) references producto(idProducto )

);

create table Proovedor(
idCliente Bigint identity primary key,
Cliente varchar(50) not null
);
--creacion de proecedimeinto alamacendo de iserccion de l tabala producto ---

CREATE PROCEDURE insert_pro 
@Marca varchar(50),
@Producto varchar(50)
 as Begin
	insert into producto (Marca,Producto) VALUES (@Marca,@Producto);
	select *from producto;

	end
	go
	-----
	--creacion de proecedimeinto alamacendo de consulta de l tabala producto ---

CREATE PROCEDURE consulta_pro 

 as Begin

	select *from producto where idProducto>5;

	end
	go
	-----
	--creacion de proecedimeinto alamacendo de iserccion de l tabala cliente ---

CREATE PROCEDURE insert_cliente 
@Cliente varchar(50)
 as Begin
	insert into cliente(Cliente) VALUES (@Cliente);
	select *from cliente;

	end
	go
	-----
	--creacion de proecedimeinto alamacendo de consulta de l tabala cliente---

CREATE PROCEDURE consulta_cli

 as Begin

	select *from cliente where idCliente=2;

	end
	go
		--creacion de proecedimeinto alamacendo de iserccion de l tabala cliente ---

CREATE PROCEDURE insert_venta
@id_cliente  Bigint,
@id_producto  Bigint ,
@fecha date, 
@cantidad int ,
@montototal int 

 as Begin
	insert into ventas(
	id_cliente,
id_producto,
fecha, 
cantidad ,
montototal ) VALUES (
@id_cliente,
@id_producto,
@fecha , 
@cantidad  ,
@montototal  );
	select *from ventas;

	end
	go
	-----
	--creacion de proecedimeinto alamacendo de consulta de l tabala cliente---

CREATE PROCEDURE consulta_venta

 as Begin

	select *from ventas;

	end
	go
	---
	CREATE PROCEDURE delete_cliente 
@idCliente bigint
 as Begin
	insert into cliente(idCliente) VALUES (@idCliente);
	select *from cliente;

	end
	go

		CREATE PROCEDURE delete_pro
@idProducto bigint
 as Begin
	insert into producto(idProducto) VALUES (@idProducto);
	select *from producto;

	end
	go