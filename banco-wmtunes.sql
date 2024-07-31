create database wmtunes;
use wmtunes;

create table artista(
cpf varchar(11) primary key,
bio varchar(100),
num varchar(100),
nome varchar(50),
email varchar(50)
);

create table plano(
cod varchar(50) primary key,
tipo varchar(5),
descrição varchar(1000),
valor double
);

create table usuarios(
nome varchar(100) primary key,
num varchar(100),
email varchar(50),
FK_plano_cod varchar (50),
foreign key(FK_plano_cod) references plano(cod)
);

create table playlist(
cod varchar (9) primary key,
nome varchar(50),
FK_usuarios_nome varchar(100),
foreign key (FK_usuarios_nome) references usuarios(nome)
);

create table musica(
nome varchar(78) primary key,
letra varchar(1000),
lancamento int,
descricao varchar(1000),
FK_usuarios_nome varchar(100),
foreign key (FK_usuarios_nome) references usuarios(nome)
);

create table genero_musical(
cod varchar(50) primary key,
nome varchar(50)
);

create table artistausuarios(
FK_artista_cpf varchar(11),
FK_usuarios_nome varchar(100),
primary key(FK_artista_cpf, FK_usuarios_nome),
foreign key(FK_artista_cpf) references artista (cpf),
foreign key(FK_usuarios_nome) references usuarios (nome)
);

create table musicaplaylist(
FK_musica_nome varchar(78),
FK_playlist_cod varchar(9),
primary key(FK_musica_nome, FK_playlist_cod),
foreign key(FK_musica_nome) references musica (nome),
foreign key(FK_usuarios_cod) references playlist (cod)
);

create table generoartista(
FK_genero_cod varchar(50),
FK_artista_cpf varchar(11),
primary key(FK_genero_cod, FK_artista_cpf),
foreign key(FK_genero_cod) references genero (cod),
foreign key(FK_artista_cpf) references artista (cpf) 
);



