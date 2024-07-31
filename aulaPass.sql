);

 create table paciente(
 nome varchar(50),
 cpf varchar(11) primary key,
 FK_quarto_num int,
 entrada date,
 saida date,
 foreign key(FK_quarto_num) references quarto (num)
 );
 
 create table enfermeira(
 nome varchar(50),
 cre int primary key,
 FK_enf_chefe int,
 foreign key(FK_enf_chefe) references enfermeira (cre)
);



create table medicopaciente(
FK_medico_crm int,
FK_paciente_cpf varchar(11),
data date,
hora varchar(5),
primary key(FK_medico_crm, FK_paciente_cpf),
foreign key(FK_medico_crm) references medico (crm),
foreign key(FK_paciente_cpf) references paciente(cpf)
);

create table enfermeiraala(
FK_enfermeira_cre int,
FK_ala_id int,
primary key(FK_enfermeira_cre, FK_ala_id),
foreign key(FK_enfermeira_cre) references enfermeira (cre),
foreign key(FK_ala_id) references ala (id)
);
