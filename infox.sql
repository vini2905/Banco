/**
 Infox
@author Vinicius Luz
*/ 


show databases;
Create database dbinfox;

use dbinfox;
 
 describe usuarios;
 
 -- criar uma tabela
 Create table usuarios(
  id int primary key auto_increment,
 usuario varchar(50) not null,
 login varchar(10) not null unique,
 senha varchar(10) 
);

show tables;

alter table usuarios modify senha varchar(250);

alter table usuarios modify login varchar(50);

-- Armazenando um campo com criptografia
insert into usuarios (usuario, login, senha)
values ('vinicius','vini@usuario',md5('12345'));


-- selecionar todos os registros de usuarios
select * from usuarios;

-- selecionar usuarios 
insert into usuarios (usuario, login, senha)
values ('ricardo','ricardo@usuario',md5('12345'));

insert into usuarios (usuario, login, senha)
values ('sandra','sandra@usuario',md5('90909'));

insert into usuarios (usuario, login, senha)
values ('matheus','theus@usuario',md5('45678'));

insert into usuarios (usuario, login, senha)
values ('gustavo','guh@usuario',md5('11223'));

insert into usuarios (usuario, login, senha)
values ('dylan','dylan@usuario',md5('66666'));