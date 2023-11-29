create database bancoTonyPizzaria;

use bancoTonyPizzaria;

create table Pizzaria
(
id_pizzaria integer primary key,
nome text,
endereco varchar(200),
cnpj bigint,

id_produto integer,
foreign key(id_produto) references Produtos(id_produto)

);

insert into Pizzaria(id_pizzaria, nome, endereco, cnpj)
values(1,"Tony Pizzaria", "Av Santa rosa", 1212348547651);

create table Produtos 
(
id_produto integer primary key,
nome text,
descricao varchar(100),
preco bigint,

id_categoria integer,
foreign key(id_categoria) references Categorias(id_categoria),

id_pedido integer,
foreign key(id_pedido) references Pedidos(id_pedido),

id_comentario integer,
foreign key(id_comentario) references Comentarios(id_comentario)

);

insert into Produtos(id_produto, nome, descricao, preco)
values
(1, "pizza de calabreza com queijo", "É especialmente preparada com recheio generoso", 16),
(2, "pizza de pepperoni com queijo", "o sabor marcante do pepperoni se destaca junto com a massa", 19),
(3, "Pizza brotinho com queijo e tomate", " A Pizza Brotinho Mezzani é uma ótima opção para um lanche rápido", 12),
(4, "Coca-cola 2 L", "Refrigerante Garrafa 2l Embalagem Econômica", "14"),
(5, "Cerveja Heineken", "Refrigerante Garrafa 3l Embalagem Econômica", "17"),
(6,"milkshake de chocolate", "é feito com leite e batido na hora. Uma delícia", "9"),
(7, "brigadeiro", "é feito de leite condensado, chocolate e manteiga, e enrolado em granulado", 4),
(6, "pudim tradicional", "extremamente cremoso, derrete na boca, sem aquela textura de textura de gelatina que encontramos", 38),
(8, "bolo de cenoura", "Delicioso, o bolo de cenoura é um clássico da confeitaria mundial.", 34);



create table Categorias
(
id_categoria integer primary key,
nome text

);

create table comentarios
(
id_comentario integer primary key,
comentario varchar(100)

);

create table Pedidos
(
id_pedido integer primary key,
preco bigint,
dataPedido date,
quantidade numeric,

id_venda integer,
foreign key(id_venda) references Vendas(id_venda),

id_cliente integer,
foreign key(id_cliente) references Clientes(id_cliente)

);

create table Clientes
(
id_cliente integer primary key,
nome text,
telefone numeric,
endereco varchar(200),

id_pizzaria integer,
foreign key(id_pizzaria) references Pizzaria(id_pizzaria)

);

create table Vendas
(
id_venda integer primary key,
dataVenda date,
horaVendas numeric

);









