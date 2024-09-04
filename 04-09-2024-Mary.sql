create database redes_sociais ;
use redes_sociais;
 create table usuarios(
 id int not null auto_increment primary key, 
 nome varchar(100) not null,
 email varchar (100) not null unique,
 data_criacao date not null
 );
 create table postagens(
 id int not null auto_increment primary key,
 usuarios_id int not null,
 texto varchar (255),
 data_publicacao date not null,
 imagens varchar(255),
 foreign key (usuarios_id) references usuarios(id)
 );
 create table comentarios(
 id int not null auto_increment primary key ,
 usuarios_id int not null,
 postagens_usuarios_id int not null,
 postagens_id int not null,
 texto varchar (255),
 data_criacao date not null,
  foreign key (usuarios_id) references usuarios(id),
  foreign key (postagens_id) references postagens (id)
 );
 create table curtidas (
 usuarios_id int not null ,
 postagens_id int not null ,
 primary key (usuarios_id,postagens_id)

 );
 insert into usuarios (nome ,email,data_criacao)
 values ('Mary','ribeirodasilvam083@gmail.com','2024/09/04');
 insert into usuarios (nome ,email,data_criacao)
 values ('Ana','ana@senai.com','2024/09/04');
 insert into usuarios (nome ,email,data_criacao)
 values ('Victor Hugo ','victorhugo@senai.com','2024/09/04');
 insert into usuarios (nome ,email,data_criacao)
 values ('Natalia Gabriela ','natygabriela@senai.com','2024/09/04');
  insert into usuarios (nome ,email,data_criacao)
 values ('Maria Luiza ','marialuiza@senai.com','2024/09/04');
 
 select * from  usuarios ;
  update usuarios set data_criacao = '2024/09/04';
   insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1 ,'passeando no parque do povo','2024/09/04','usuarios/alunos/senai');
   
  insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'viajando em paris','2024/09/04','usuarios/alunos/senai');
   
 insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'estou na favela do rio de janeiro ','2024/08/31','usuarios/alunos/senai');
   
   insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'na casa da minha amiga tomando café','2024/08/27','usuarios/alunos/senai');
   
   insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'tomando café na paes e cia ','2024/08/27','usuarios/alunos/senai');

 insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1 ,'passeando no parque do povo','2024/09/04','usuarios/alunos/senai');
   
  insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'viajando em paris','2024/09/04','usuarios/alunos/senai');
   
 insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'estou na favela do rio de janeiro ','2024/08/31','usuarios/alunos/senai');
   
   insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'na casa da minha amiga tomando café','2024/08/27','usuarios/alunos/senai');
   
   insert into postagens (usuarios_id,texto,data_publicacao,imagens)
   values (  1,'tomando café na paes e cia ','2024/08/27','usuarios/alunos/senai');
