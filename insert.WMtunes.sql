insert into artista (cpf, bio, num, nome, email) values 
("000.000.000-00", "Cantora Gospel", "(82)99370-1670", "Laura Cristine", "laurinha@gmail.com"),
("111.111.111-11", "Comunidade católica", "(82)99450-2690", "Mariana Vanessa", "marianavanessa@gmail.com"),
("222.222.222-22", "🎧", "82)99230-6609", "Waldylene Gomes", "Waldyleneggomes@gaail.com");

insert into plano (cod, tipo, descrição, valor) values 
("222485", "Mensal", "Plano Premium Individual, 1 conta Premium", 19.50),
("115611", "Anual", "Plano Familia, 6 contas Premium ou Kids", 200),
("256235", "Mensal", "Plano Duo, 2 contas Premium", 27.90);

insert into usuarios (cpf, nome, num, email) values
("333.333.333-33", " Maryanna", "(82)9917-7655)", "maryanna356@gmail.com"),
("444.444.444-44", "Givanildo", "(82) 9980-6574", "givanidss23@gmail.com"),
("555.555.555-55", "Jujuba", "(82) 9936-8410", "jujubs10@gmail.com");

insert into playlist (cod, nome, FK_usuarios_cpf) values
("12345", "Funk", "333.333.333-33"),
("54321", "Forró", "444.444.444-44"),
("45697", "Reggae","555.555.555-55");

insert into musica (nome, letra, lancamento, descricao) values
("Glamurosa", "Glamurosa, rainha do funk...", "2001","Glamurosa (Mc Marcinho)"),
("Beijos blues e poesias", "Chorando o gelo que você me deu...", "2015", "Álbum: K-Sis"),
("Me namora", "Lembro que te vi caminhar...","2019", "Artista: Natiruts");

insert into genero_musical (cod, nome) values
("342345", "Gospel"),
("098745", "Samba"),
("176409", "Rap");

insert into artistausuarios (FK_artista_cpf, FK_usuarios_cpf) values
("000.000.000-00", "333.333.333-33"),
("111.111.111-11", "444.444.444-44"),
("222.222.222-22", "555.555.555-55");

insert into musicaplaylist (FK_musica_nome, FK_playlist_cod) values
("Glamurosa", "12345"),
("Beijos blues e poesias", "54321"),
("Me namora", "45697");


insert into generoartista (FK_genero_cod,FK_artista_cpf) values
("342345", "000.000.000-00"),
("098745", "111.111.111-11"),
("176409", "222.222.222-22");

insert into musicagenero (FK_musica_nome, FK_genero_cod) values
("Glamurosa", "342345"),
("Beijos blues e poesias", "098745"),
("Me namora", "176409");


insert into musicaartista (FK_musica_nome, FK_artista_cpf) values
("Glamurosa", "000.000.000-00"),
("Beijos blues e poesias", "111.111.111-11"),
("Me namora", "222.222.222-22");

insert into usuariosmusica (FK_usuarios_cpf, FK_musica_nome) values
("333.333.333-33", "Glamurosa"),
("444.444.444-44", "Beijos blues e poesias"),
("555.555.555-55", "Me namora");

insert into usuariogenerofav (FK_usuarios_cpf,FK_genero_cod)