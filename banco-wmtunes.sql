create database wmtunes;
use wmtunes;

create table artista(
cpf varchar(14) primary key,
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
cpf varchar(14) primary key,
nome varchar (50),
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
descricao varchar(1000)
);

create table genero_musical(
cod varchar(50) primary key,
nome varchar(50)
);

create table artistausuarios(
FK_artista_cpf varchar(14),
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
FK_artista_cpf varchar(14),
primary key(FK_genero_cod, FK_artista_cpf),
foreign key(FK_genero_cod) references genero (cod),
foreign key(FK_artista_cpf) references artista (cpf) 
);

create table musicagenero(
FK_musica_nome varchar(78),
FK_genero_cod varchar (50),
primary key(FK_musica_nome, FK_genero_cod),
foreign key(FK_musica_nome) references musica (nome),
foreign key(FK_genero_cod) references genero(cod)
);

create table musicaartista(
FK_musica_nome varchar (78),
FK_artista_cpf varchar (14),
primary key(FK_musica_nome, FK_artista_cpf),
foreign key(FK_musica_nome) references musica (nome),
foreign key(FK_artista_cpf) references artista (cpf)
);

create table usuariomusica(
FK_usuario_cpf varchar (14),
FK_musica_nome varchar(78),
primary key(FK_usuario_cpf, FK_musica_nome),
foreign key(FK_usuario_cpf) references usuario (cpf),
foreign key(FK_musica_nome) references musica (nome)
);





