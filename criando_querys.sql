use ecomerce;
-- Quantos pedidos foram feitos por cada cliente
select 
c.idClient,
c.Fname,
c.Lname,
count(o.idOrders) as total_pedidos
from clients c
left join orders o 
on c.idClient = o.idOrderClient
group by c.idClient, c.Fname, c.Lname;

-- Algum vendedor também é fornecedor?
select 
s.socialnameseller as vendedor,
sp.socialnamesuplier as fornecedor,
s.CNPJ_seller
from seller s
join suplier sp 
on s.CNPJ_seller = sp.CNPJ_suplier;

-- Relação de produtos, fornecedores e estoques
select 
p.Pname as produto,
s.socialnamesuplier as fornecedor,
ps.QuantityPsup as quantidade_fornecida,
st.storagequantity as estoque
from product p
join product_suplier ps 
on p.idProduct = ps.idPsProduct
join suplier s 
on ps.idPsSuplier = s.idSuplier
join storagelocation sl 
on p.idProduct = sl.idLProduct
join product_storage st 
on sl.idLStorage = st.idProductStorage;

-- Relação de nomes dos fornecedores e nomes dos produtos
select 
s.socialnamesuplier as fornecedor,
p.Pname as produto
from product_suplier ps
join suplier s 
on ps.idPsSuplier = s.idSuplier
join product p 
on ps.idPsProduct = p.idProduct
order by fornecedor;
