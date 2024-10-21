#tela info usuario
SELECT foto from usuarios;
select nome from usuarios;
select g.nome from genero_musical g 
inner join usuariosgenerofav ug on g.cod = ug.FK_genero_cod 
inner join usuarios u on u.cpf = ug.FK_usuarios_cpf where u.cpf = "333.333.333-33";

 

#info extra user