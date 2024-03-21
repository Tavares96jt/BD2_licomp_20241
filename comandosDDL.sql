-- acessando o mysql pelo terminal do xampp
mysql -u root

-- visualizando os bancos de dados instalados
show databases;

-- criando um novo banco de dados
create database exemplodb;

-- acessando o banco de dados
use exemplodb;

-- excluindo um banco de dados
drop database exemplodb;

-- criar bancoDB
create database bancoDB;

-- acessar banco
use bancoDB;

--criando a tabela bancos
create table bancos (
    numero int not null,
    nome varchar(100) not null,
    constraint bancos_pk primary key(numero)
);

-- criando a tabela agencias
create table agencias(
    numero varchar (100) not null,
    nome varchar (100) not null,
    telefone int,
    banco int not null,
    constraint agencias_pk
    primary key(numero) 
);

-- criando a tabela clientes
create table clientes(
    id int (11) not null auto_increment,
    nome varchar (100) not null,
    email varchar (100) not null,
    primary key (id)
); 

-- VER DETALHES DA TABELA 
describe agencias;

-- ALTERANDO NA TABELA

alter table clientes 
add uf char(2) default 'RJ';

-- ADICIONE À TABELA CLIENTES OS CAMPOS DIA E ANIVERÁRIO, DO TIPO INTEIRO, NÃO OBRIGATÓRIOS

alter table clientes
add dia int(2);
alter table clientes
add mes int(2);

-- ** config do github ** --
-- definindo usuario

git config -- global user.name "rosenclever" 
git config -- global user.email "rosenclever@gmail.com"
git add .
git commit -m "aula do dia 14/03"
git remote add original https://github.com/Tavares96jt/BD2_licomp_20241.git
git push -u original master
