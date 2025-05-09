create database Trabalho_Livraria;
use Trabalho_Livraria;

create table Cliente (
idCliente int not null,
nome varchar (50) not null, 
telefone varchar (20) not null, 
email varchar (50) not null, 
endereco varchar (100) not null,
primary key (idCliente)
); 

create table Pedido (
idPedido int not null, 
idCliente int not null,
dataPedido date not null, 
valorPedido decimal (5,2) not null, 
primary key (idPedido),
foreign key (idCliente) references Cliente (idCliente)
);

create table Editora (
idEditora int not null,
nome varchar (50) not null, 
telefone varchar (20) not null,
email varchar (50) not null, 
endereco varchar (100) not null, 
primary key (idEditora)
);

create table Livro (
idLivro int not null,
idEditora int not null,
titulo varchar (100) not null,
autor varchar (50) not null, 
ano int not null,
ISBN varchar (20) not null,
preco decimal (5,2) not null,
primary key (idLivro),
foreign key (idEditora) references Editora (idEditora)
);

create table Estoque (
idLivro int not null, 
quantidade int not null, 
foreign key (idLivro) references Livro (idLivro)
);

create table ItemPedido (
idPedido int not null,
idLivro int not null,
quantidade int not null,
valorItemPedido decimal (5,2) not null,
foreign key (idPedido) references Pedido (idPedido),
foreign key (idLivro) references Livro (idLivro)
);




