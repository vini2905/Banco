/**
 Agenda de contado
@author viny
*/ 

-- Pesquisar banco de dados disponiveis




show databases;
-- Criando um banco de dados
Create database carrinhobdcompra;


-- selecionar o bancos de dados
use carrinhobdcompra;

-- remover um banco de dados
drop database carrinhobdcompra;

-- comando para mostrar a tabela
describe carrinho;

-- Criando uma tabela no banco de dados

Create table carrinho(
 id int primary key auto_increment,
 produto varchar(50) not null,
 valor varchar(15) not null,
 quantidade varchar(50) not null
);

alter table carrinho modify produto varchar(100) not null;
alter table carrinho modify quantidade int not null;
alter table carrinho modify valor decimal(10,2)not null;

use carrinhobdcompra;
show tables;
describe carrinho;
drop table carrinho;



-- selecionar todos os registros da tabela
select * from carrinho;

-- operações matemáticas
select sum(valor*quantidade) as total from carrinho;


select * from carrinho where produto='banana';

select * from carrinho where produto='maçã';

select * from carrinho where produto='abacate';

select * from carrinho where produto='caju';

select * from carrinho where produto='laranja';

select * from carrinho where produto='abacaxi';

select * from carrinho where produto='açai';

select * from carrinho where produto='amora';

select * from carrinho where produto='cereja';

select * from carrinho where produto='pitanga';


-- Ordem alfabética
select * from carrinho order by produto asc;


insert into carrinho(produto,valor,quantidade)
values('banana',2,5);

insert into carrinho(produto,valor,quantidade)
values('maçã',3,19);

insert into carrinho(produto,valor,quantidade)
values('abacate',3.2,11);

insert into carrinho(produto,valor,quantidade)
values('caju',4,9);

insert into carrinho(produto,valor,quantidade)
values('laranja',5,7);

insert into carrinho(produto,valor,quantidade)
values('abacaxi',2,16);

insert into carrinho(produto,valor,quantidade)
values('açai',6,15);

insert into carrinho(produto,valor,quantidade)
values('amora',3,10);

insert into carrinho(produto,valor,quantidade)
values('cereja',2,20);

insert into carrinho(produto,valor,quantidade)
values('pitanga',3,15);


-- excluindo um produto
delete from carrinho where id=36;
 
 -- alterar quantidade ds produtos (usar Id por "segurança")
update carrinho set quantidade='10' where id=35;

update carrinho set quantidade='20' where id=39;












