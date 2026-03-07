-- criação para cenario de e-comerce
-- drop database ecomerce;
create database ecomerce;
use ecomerce;

-- tabelas
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF_client char(11) not null,
    Address varchar(30),
    constraint unique_cpf_client unique (CPF_client)
);
-- desc clients;

create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10),
    classification_kids bool,
    category enum('Eletronics','Móveis','Vestimenta','Quimico','Alimenticio','Brinquedo') not null,
    Avaliação float default 0,
    Ptamanho varchar(10)
);
-- drop table orders;
create table orders(
	idOrders int auto_increment primary key,
	idOrderClient int,
    Orderstatus enum('Cancelado','Confirmado','Em Andamento') default 'Em Andamento',
    Order_description varchar(255),
    sendValue float default 10,
    payment bool,
    type_payment enum('PIX','Crédito','Boleto') not null,
	constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
);

-- drop table credit_payment_validation;
create table credit_payment_validation(
    idCreditPayment int auto_increment primary key,
    idOrder int,
    card_holder varchar(100) not null,
    card_number varchar(20) not null,
    card_expiration date not null,
    card_cvv varchar(4) not null,
    installments int default 1,
    
    constraint fk_credit_order foreign key (idOrder) references orders(idOrderClient)
);
-- desc orders;
create table product_storage(
	idProductStorage int auto_increment primary key,
    storagequantity int not null,
    storagelocation varchar(255) not null
);

create table suplier(
	idSuplier int auto_increment primary key,
    socialnamesuplier varchar(255) not null,
    CNPJ_suplier char(15) not null,
    contactsuplier char(11) not null,
	constraint unique_suplier_cnpj unique(CNPJ_suplier)
);
-- desc suplier;

create table seller(
	idSeller int auto_increment primary key,
    socialnameseller varchar(255) not null,
    AbstNameseller varchar(255),
    CNPJ_seller char(15),
    CPF_seller char(11),
    location varchar(45) not null,
    contactseller char(11) not null,
    constraint unique_seller_cnpj unique(CNPJ_seller),
	constraint unique_seller_cpf unique(CPF_seller)
);
-- desc seller;
create table productseller(
	idProdSeller int,
    idProduct int,
    ProdSelQuantity int not null,
    primary key (idProdSeller, idProduct),
    constraint fk_product_seller foreign key (idProdSeller) references seller(idSeller),
	constraint fk_product_product foreign key (idProduct) references product(idProduct)
);
-- desc productseller;
drop table productorder;
create table productorder(
	idProdOrder int,
    idPOorder int,
    ProdOrderQuantity int not null,
    POStatus enum ('Disponivel','Em falta') default 'Disponivel',
    primary key (idProdOrder, idPOorder),
    constraint fk_product_order foreign key (idProdOrder) references orders(idOrderClient),
	constraint fk_productorder_product foreign key (idPOorder) references product(idProduct)
);

create table storagelocation(
	idLStorage int,
    idLProduct int,
    location varchar(255) not null,
    primary key (idLStorage, idLProduct),
    constraint fk_product_storage_location foreign key (idLStorage) references product_storage(idProductStorage),
	constraint fk_storage_location_storage foreign key (idLProduct) references product(idProduct)
);
create table product_suplier(
	idPsSuplier int,
    idPsProduct int,
    QuantityPsup int not null,
    primary key (idPsSuplier,idPsProduct),
    constraint fk_product_suplier_suplier foreign key (idPsSuplier) references suplier(idSuplier),
    constraint fk_product_suplier_product foreign key (idPsProduct) references product(idProduct)
);
-- show tables;