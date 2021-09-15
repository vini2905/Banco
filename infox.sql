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



-- Tabela de clientes (clientes da assistência técnica)
create table clientes(
idcli int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null
);

-- mostrar a tabela
describe clientes;

-- tabela de OS (ordem de serviços)
create table tbos(
  os int primary key auto_increment,
 equipamento varchar(250) not null,
 defeito varchar(250) not null,
 dataos timestamp default current_timestamp,
    statusOs varchar(50) not null,
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references clientes(idcli)
    );
    
    -- mostrar a tabela
    describe tbos;

insert into clientes (nome,fone) values('Kelly Cristina','31256-2222');
insert into clientes (nome,fone) values('José de Assis','91234-1111');

select * from clientes;

insert into tbOs(equipamento,defeito,status0s,idcli)
values('Notebook Lenovo modelo','Não liga','Orçamento',1);



insert into tbOs(equipamento,defeito,status0s,valor,idcli)
values('PC Positivo','Formatação do Windows','Aprovado',80,2);



select * from tbOs;


