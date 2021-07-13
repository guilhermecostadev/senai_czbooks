--cria o banco de dados

create database czbooks;
GO


--define o banco de dados que sera usado
use czbooks;
GO

--cria uma tabela dentro do banco de dados

create table tiposusuarios 
(
		 idTipoUsuario	INT PRIMARY KEY
		,TituloTipoUsuario	varchar (200) unique not null
);
GO

create table Usuarios
(
	idUsario				INT PRIMARY KEY IDENTITY
	,idtipodeUsuario		int foreign key references tipoUsuario
	,nomeUsuario			varchar (200) unique not null
	,email					varchar (200) unique not null
	,senha					varchar (200) not null
);
GO

create table Biblioteca
(
	idBiblioteca		INT PRIMARY KEY IDENTITY
	,nomeFantasia		varchar (100) NOT NULL
	,endereco			varchar (100) NOT NULL
	,cnpj				char	(14)  NOT NULL
);
GO



