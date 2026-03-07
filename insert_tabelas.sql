use ecomerce;

insert into clients (Fname, Minit, Lname, CPF_client, Address) values
('Pedro', 'A', 'Silva', '12345678901', 'Rua das Flores 120'),
('Maria', 'B', 'Souza', '23456789012', 'Av Paulista 450'),
('Joao', 'C', 'Oliveira', '34567890123', 'Rua Augusta 89'),
('Ana', 'D', 'Pereira', '45678901234', 'Rua Bela Vista 300'),
('Carlos', 'E', 'Santos', '56789012345', 'Av Brasil 1020'),
('Juliana', 'F', 'Costa', '67890123456', 'Rua XV de Novembro 55'),
('Lucas', 'G', 'Almeida', '78901234567', 'Av Independencia 410'),
('Fernanda', 'H', 'Rocha', '89012345678', 'Rua das Palmeiras 72'),
('Ricardo', 'I', 'Martins', '90123456789', 'Rua Central 900'),
('Patricia', 'J', 'Barbosa', '01234567890', 'Av Atlantica 210');
-- select * from clients;

insert into product (Pname, classification_kids, category, Avaliação, Ptamanho) values
('TV', false, 'Eletronics', 4.5, '55pol'),
('Sofa', false, 'Móveis', 4.2, 'Grande'),
('Camisa', false, 'Vestimenta', 4.0, 'M'),
('Boneca', true, 'Brinquedo', 4.8, '30cm'),
('Laptop', false, 'Eletronics', 4.7, '15pol'),
('Cadeira', false, 'Móveis', 3.9, 'Medio'),
('Chocolate', true, 'Alimenticio', 4.9, '200g'),
('Deterg', false, 'Quimico', 4.1, '500ml'),
('Carrinho', true, 'Brinquedo', 4.6, '25cm'),
('Jaqueta', false, 'Vestimenta', 4.3, 'G');
-- select * from orders;

insert into orders (idOrderClient, Orderstatus, Order_description, sendValue, payment, type_payment) values
(1, 'Confirmado', 'Compra de TV 55 polegadas', 20, true, 'Crédito'),
(2, 'Em Andamento', 'Compra de sofá 3 lugares', 35, false, 'Boleto'),
(3, 'Confirmado', 'Compra de camisa tamanho M', 10, true, 'PIX'),
(4, 'Cacelado', 'Compra de boneca infantil', 15, false, 'PIX'),
(5, 'Confirmado', 'Compra de notebook 15 polegadas', 25, true, 'Crédito'),
(6, 'Em Andamento', 'Compra de cadeira escritorio', 18, false, 'Boleto'),
(7, 'Confirmado', 'Compra de chocolate 200g', 10, true, 'PIX'),
(8, 'Em Andamento', 'Compra de detergente 500ml', 12, false, 'PIX'),
(9, 'Confirmado', 'Compra de carrinho brinquedo', 14, true, 'Crédito'),
(10, 'Em Andamento', 'Compra de jaqueta tamanho G', 22, false, 'Boleto');

insert into credit_payment_validation 
(idOrder, card_holder, card_number, card_expiration, card_cvv, installments) values
(1, 'Pedro A Silva', '4532123412341234', '2028-05-01', '123', 3),
(5, 'Carlos E Santos', '5212345678901234', '2027-11-01', '456', 5),
(9, 'Ricardo I Martins', '4012888888881881', '2029-03-01', '789', 2);
-- select * from credit_payment_validation;

insert into product_storage (storagequantity, storagelocation) values
(120, 'Centro Distribuicao - Setor A'),
(300, 'Centro Distribuicao - Setor B'),
(60, 'Loja SP - Estoque 1'),
(40, 'Loja SP - Estoque 2'),
(90, 'Loja RJ - Estoque 1'),
(170, 'Loja MG - Estoque 3');
-- select * from product_storage;

insert into suplier (socialnamesuplier, CNPJ_suplier, contactsuplier) values
('Tech Distribuidora Ltda', '12345678000101', '11987654321'),
('Moveis Brasil SA', '23456789000102', '21976543210'),
('Moda Center Ltda', '34567890000103', '31965432109'),
('Brinquedos Alegria SA', '45678901000104', '41954321098'),
('Alimentos Bom Sabor Ltda', '56789012000105', '51943210987'),
('Quimica Industrial SA', '67890123000106', '61932109876'),
('Logistica Prime SA', '01234567000110', '11988776655');
-- select * from suplier;

insert into seller 
(socialnameseller, AbstNameseller, CNPJ_seller, CPF_seller, location, contactseller) values
('Tech Store Eletronicos Ltda', 'TechStore', '11222333000101', null, 'Sao Paulo', '11987650001'),
('Moveis Conforto SA', 'MoveConfort', '22333444000102', null, 'Curitiba', '41987650002'),
('Moda Urbana Comercio Ltda', 'ModaUrbana', '33444555000103', null, 'Rio de Janeiro', '21987650003'),
('Carlos Alberto Pereira', null, null, '12345678901', 'Belo Horizonte', '31987650004'),
('Fernanda Souza Lima', null, null, '23456789012', 'Porto Alegre', '51987650005'),
('Brinquedos Fantasia Ltda', 'FantasiaToy', '44555666000104', null, 'Campinas', '19987650006'),
('Ricardo Martins Silva', null, null, '34567890123', 'Salvador', '71987650007');
-- select * from seller;

insert into productseller (idProdSeller, idProduct, ProdSelQuantity) values
(1, 1, 30),
(1, 5, 15),
(2, 2, 20),
(2, 6, 25),
(3, 3, 40),
(3, 10, 18),
(4, 7, 50),
(5, 3, 22),
(6, 4, 35),
(6, 9, 28),
(7, 1, 10);
-- select * from productseller;

insert into productorder (idProdOrder, idPOorder, ProdOrderQuantity, POStatus) values
(1, 1, 1, 'Disponivel'),
(1, 3, 2, 'Disponivel'),
(2, 2, 1, 'Disponivel'),
(3, 3, 3, 'Disponivel'),
(3, 7, 1, 'Disponivel'),
(4, 4, 1, 'Em falta'),
(5, 5, 1, 'Disponivel'),
(6, 6, 2, 'Disponivel'),
(7, 7, 5, 'Disponivel'),
(8, 8, 2, 'Disponivel'),
(9, 9, 1, 'Disponivel'),
(9, 4, 1, 'Em falta'),
(10, 10, 1, 'Disponivel');
-- select *from productorder;

insert into storagelocation (idLStorage, idLProduct, location) values
(1, 6, 'Centro Distribuicao - Setor A'),
(2, 8, 'Centro Distribuicao - Setor B'),
(3, 9, 'Loja SP - Estoque 1'),
(4, 10, 'Loja SP - Estoque 2');
-- select *from storagelocation;

insert into product_suplier (idPsSuplier, idPsProduct, QuantityPsup) values
(1, 1, 100),
(1, 5, 80),
(2, 2, 60),
(2, 6, 90),
(3, 3, 120),
(3, 10, 70),
(4, 4, 150),
(4, 9, 110),
(5, 7, 200),
(6, 8, 140),
(7, 1, 75);
-- select *from product_suplier;
-- show tables;