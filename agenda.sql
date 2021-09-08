/**
 Agenda de contado
@author Vinicius Luz
*/ 

-- Pesquisar banco de dados disponiveis




show databases;
-- Criando um banco de dados
Create database dbagenda;


-- selecionar o bancos de dados
use dbagenda;


-- remover um banco de dados
drop database dbagenda;


-- Criando uma tabela no banco de dados

Create table contatos(
 id int primary key auto_increment,
 nome varchar(50) not null,
 fone varchar(15) not null,
 email varchar(50) unique
);

-- Verificar tabelas disponiveis no banco
show tables;

-- comando usado para descrever a tabela
describe contatos;

-- comando usado para alterar o nome de um campo(cabeçalho) da tabela
alter table contatos change nome contato varchar (50) not null;

-- comando para adicionar um novo campo a tabela
alter table contatos add column obs varchar(250);


-- comando usado para adicionar um novo campo em um lugar especifico
alter table contatos add column fone2 varchar(15) after fone;

-- comando usado para modificar o tipo de dado e/ou validações do campo
alter table contatos modify column fone2 varchar(15) not null after fone;
alter table contatos modify email varchar(100);
alter table contatos modify email varchar(100) unique;

-- comando usado para apagar um campo da tabela
alter table contatos drop column obs;


-- comando usado para remover uma tabela
drop tables contato;

select * from contatos;

/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.



CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)



*/


/* CRUD CREATE (insert) */

Insert into contatos (nome,fone,email)
values ('Bill Gates','99999-1111','bill@email.com');

Insert into contatos (nome,fone)
values ('Beatriz','99999-2222');

insert into contatos (nome,fone,email)
values ('Linus Torvalds','99999-3333','linux@email.com');

insert into contatos (nome,fone,email)
values ('Ana Maria','99999-4444','ana@email.com');


/* CRUD READ (SELECT) */
-- selecionar todos os registros da tabela
select * from contatos;

-- selecionar todos os registros em ordem alfabética(asc desc)
select * from contatos order by nome asc;
select * from contatos order by nome desc;

-- selecinar um registro especifico
select * from contatos where nome='ana maria';
select * from contatos where id=1;

/* CRUD UPDATE (update) */
-- alterando um dado específico do registro da tabela (usar sempre o id "SEGURANÇA")
update contatos set fone='91234-8090' where id=3;
update contatos set email='bia@email.com' where id=2;


-- alterando todos os dados do registro
update contatos set nome='Willian Gates',fone='32456-9000',email='bill@outlook.com' where id=1;



-- excluindo um registro da tabela (usar sempre o id "SEGURANÇA")
delete from contatos where id=4;



-- selecionar campos especificos da tabela
select nome from contatos;
select nome,fone from contatos order by nome asc;

-- filtrar nomes que começam com a letra B
select * from contatos where nome like 'B%';


select * from contatos order by nome asc;

-- criando contatos 
select * from contatos where nome='viviam';
select * from contatos where nome='vinicius';
select * from contatos where nome='vitor';
select * from contatos where nome='vanda';
select * from contatos where nome='pedro';
select * from contatos where nome='jhon';
select * from contatos where nome='edilson';
select * from contatos where nome='mario';
select * from contatos where nome='Cj';
select * from contatos where nome='tommy';

-- insert

Insert into contatos (nome,fone,email)
values ('CJ','99999-5555','Cj@email.com');
select * from contatos where id=10;


Insert into contatos (nome,fone,email)
values ('tommy','99999-6666','tommy@email.com');

Insert into contatos (nome,fone)
values ('mario','99999-7777');

Insert into contatos (nome,fone)
values ('edilson','99999-8888');

Insert into contatos (nome,fone,email)
values ('jhon','99999-9999','jhon@email.com');

Insert into contatos (nome,fone,email)
values ('pedro','99999-7171','pedro@email.com');

Insert into contatos (nome,fone,email)
values ('vinicius','99999-1010','vini@email.com');

Insert into contatos (nome,fone,email)
values ('vanda','99999-1111','vanda@email.com');

































