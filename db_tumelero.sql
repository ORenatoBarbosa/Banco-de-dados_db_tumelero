 
create database db_tumelero;

use db_tumelero;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
	localUso varchar(255) not null,
	ativo boolean not null,
    
	primary key (id)
);

use db_tumelero;

create table tb_produto(
	id bigint auto_increment,
	nome varchar(255) not null,
	preco decimal(10,2) not null,
    disponivel boolean,
    categ_id bigint not null,
    
	primary key (id),
    foreign key (categ_id) references tb_categoria(id)
);


insert into tb_categoria(tipo, localUso, ativo) values ("Tintas", "Interno", true);
insert into tb_categoria(tipo, localUso, ativo) values ("Revestimentos", "Externo", true);
insert into tb_categoria(tipo, localUso, ativo) values ("Decoração", "Interno", true);
insert into tb_categoria(tipo, localUso, ativo) values ("Acessórios", "Flexível", true);

insert into tb_produto(nome, preco, disponivel, categ_id) values ("Coral", 250.00, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Gesso", 190.50, true, 2);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Papel de Parede", 310.99, true, 3);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Furadeira", 500.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Martelo", 410.99, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Suvinil", 360.00, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Quadros", 275.00, true, 3);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Caixa de ferramentas", 120.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("tijolos", 500.00, true, 2);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Telha", 85.00, true, 2);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("caixa organizadoa", 65.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Porcelanato", 69.00, true, 2);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Piso cerâmica", 39.90, true, 2);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Arcondicionado", 2899.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Ventilador",80.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Betoneira", 4275.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Espatula aço",10.50, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Escada de aluminio doméstica", 145.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Varal de chão", 135.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Cola PVA", 25.00, true, 3);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Acrilica", 36.00, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Verniz", 89.91, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Stain majestic", 143.91, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Massa corrida", 10.71, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Fita Crepe", 7.99, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Estante Modulare", 138.00, true, 3);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Tapete", 49.00, true, 3);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Cola multiuso", 19.00, true, 2);

select * from tb_produto where preco > 500.00;
select * from tb_produto where preco >= 300.00 && preco <= 600.00;
select * from tb_produto where nome like "Suv%";

select tb_produto.nome, tb_produto.preco, tb_categoria.tipo from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categ_id;

# Renato Barbosa
