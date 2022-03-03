--INSERT INTO Tipo_Utilizador (descTP) VALUES ('Cliente') = 1
--INSERT INTO Tipo_Utilizador (descTP) VALUES ('Fornecedor') = 2
Select * from Tipo_Utilizador
--------------------------------------------------------------------

Select * from CP
--INSERT INTO CP(localidade) VALUES ('Trofa') - 1
--INSERT INTO CP(localidade) VALUES ('Barcelos') - 2
--Podem ser adicionados mais ------------------

-- Só existe Telefone, Email e FAX 
Select * from Tipo_Contacto
--INSERT INTO Tipo_Contacto (descCont) VALUES ('Telefone') = 1
--INSERT INTO Tipo_Contacto (descCont) VALUES ('Email') = 2
--INSERT INTO Tipo_Contacto (descCont) VALUES ('FAX') = 3
------------------------------------------------------------------

Select * from Morada
--INSERT INTO Morada(rua, CPCPID) VALUES ('Travessa da Liberdade', 1) -> tem de ser um codigo postal
Insert into Morada(rua, CPCPID) values ('Rua de Camões', 2)
---------------------------------------------------------------------------

Select * from Contacto
--INSERT INTO Contacto(numero, Tipo_ContactoTCID, UtilizadorUID) VALUES ('252491497', 1, 1)
INSERT INTO Contacto(numero, Tipo_ContactoTCID, UtilizadorUID) VALUES ('252734753', 1, 2)
---------------------------------------------------------------------------
Select * from Utilizador
INSERT INTO Utilizador(password,Tipo_UtilizadorTUID, MoradaMID) VALUES ('12345',1, 1)
-- Criar um Cliente(id 1) com o telefone 252491497 e mora na travessa da liberdade = 1, password 12345, utilizador numero 1
Insert into Utilizador(password,Tipo_UtilizadorTUID, MoradaMID) VALUES ('54321',2, 4)
-- Criar um Fornecedor(id 2) com o telefone 252734753 e mora na rua Camões = 2, password = 54321, utilizador 2
------------------------------------------------------------------------------

Select * from Cliente
INSERT INTO Cliente(nome, descCli, UtilizadorUID) VALUES ('Mundos de Vida', 'Instituicao', 1)

Select * from Fornecedor
Insert into Fornecedor(nome, UtilizadorUID)values ('DOZE', 2)
------------------------------------------------------------------------------
Select * from Utilizador
Select * from Estado

INSERT INTO Estado(descEst) Values ('Mau')
INSERT INTO Estado(descEst) Values ('Intermedio')
INSERT INTO Estado(descEst) Values ('Bom')

Select * from Tipo_Prod

Insert into Tipo_Prod(descTProd) values ('Frutas')
Insert into Tipo_Prod(descTProd) values ('Legumes')
Insert into Tipo_Prod(descTProd) values ('Carnes')
Insert into Tipo_Prod(descTProd) values ('Peixes')
Insert into Tipo_Prod(descTProd) values ('Frutos Secos')
Insert into Tipo_Prod(descTProd) values ('Vegetais')

SELECT Pedido.quantidade, data, descPro,descTProd, descEst, PeID FROM Pedido_Prod JOIN Pedido ON Pedido.PeID=Pedido_Prod.PedidoPeID
                        JOIN Produto ON Produto.PID=Pedido_Prod.ProdutoPID
						JOIN Estado ON Estado.EID=Pedido_Prod.ProdutoEstadoEID
						JOIN Tipo_Prod ON Tipo_Prod.TPID=Pedido_Prod.ProdutoTipo_ProdTPID
                         WHERE YEAR(data)='2022' and MONTH(data)='1' and Pedido.ClienteUtilizadorUID= '1'

Insert into Produto(PID,descPro, forma_pro, quantidade, Tipo_ProdTPID, EstadoEID) values (1,'Batatas','Normal',3,6,3)
Insert into Produto(PID,descPro, forma_pro, quantidade, Tipo_ProdTPID, EstadoEID) values (2,'Batatas','Normal',2,6,2)
Insert into Produto(PID,descPro, forma_pro, quantidade, Tipo_ProdTPID, EstadoEID) values (3,'Alface','Normal',4,6,3)
select * from Produto
Delete from Produto where PID=2 and descPro='Alface'

-- Mes/Dia/Ano
insert into Pedido(quantidade,ClienteUtilizadorUID,PeID,data)values(2,1,1,'01/01/2022')
insert into Pedido(quantidade,ClienteUtilizadorUID,PeID,data)values(5,1,22,'01/01/2022')
insert into Pedido(quantidade,ClienteUtilizadorUID,PeID,data)values(5,1,23,'03/01/2022')
insert into Pedido(quantidade,ClienteUtilizadorUID,PeID,data)values(5,1,24,'01/04/2022')

Select count(PID) as total from Produto
select * from pedido

Delete from Pedido_Prod where PedidoPeID = 2

Delete from Pedido where PeID = 2

--eliminar pedido id 23

Insert into Pedido_Prod(PedidoClienteUtilizadorUID,PedidoPeID,ProdutoPID,ProdutoTipo_ProdTPID,ProdutoEstadoEID)values(1,1,1,6,3)
Insert into Pedido_Prod(PedidoClienteUtilizadorUID,PedidoPeID,ProdutoPID,ProdutoTipo_ProdTPID,ProdutoEstadoEID)values(1,22,1,6,3)
Insert into Pedido_Prod(PedidoClienteUtilizadorUID,PedidoPeID,ProdutoPID,ProdutoTipo_ProdTPID,ProdutoEstadoEID)values(1,23,1,6,3)
Insert into Pedido_Prod(PedidoClienteUtilizadorUID,PedidoPeID,ProdutoPID,ProdutoTipo_ProdTPID,ProdutoEstadoEID)values(1,24,1,6,3)

select * from Pedido_Prod
--eliminar o pedido id 23

Select descPro from Produto JOIN Tipo_Prod ON Tipo_Prod.TPID=Produto.Tipo_ProdTPID where descTProd = 'Carne'

------------------------------------------------------------------------------------------------------------------------
/*
Já tem um Cliente e um Fornecedor 
O cliente já tem um pedido
*/

Select * from Doacao
Select count(DID) as total from Doacao
Insert into Doacao(DID,descDoa,quantidade,FornecedorUtilizadorUID)values(1,'Batatas',3,2)

select * from Doa_Prod
insert into Doa_Prod(DoacaoDID,DoacaoFornecedorUtilizadorUID,ProdutoPID,ProdutoTipo_ProdTPID,ProdutoEstadoEID)values(1,2,1,6,3)

SELECT DID, descDoa, quantidade, descTProd, descEst 
                    FROM Doacao 
                    JOIN Doa_Prod ON Doacao.DID=Doa_Prod.DoacaoDID
                    JOIN Tipo_Prod ON Tipo_Prod.TPID=Doa_Prod.ProdutoTipo_ProdTPID
                    JOIN Estado ON Estado.EID=Doa_Prod.ProdutoEstadoEID
                    WHERE FornecedorUtilizadorUID= 2


Select descEst from Estado JOIN Produto on Produto.EstadoEID=Estado.EID JOIN Tipo_Prod on Tipo_Prod.TPID=Produto.Tipo_ProdTPID Where descTProd='Vegetais'
Select PID FROM Produto JOIN Tipo_Prod on Tipo_Prod.TPID=Produto.Tipo_ProdTPID JOIN Estado on Estado.EID=Produto.EstadoEID WHERE descTProd= 'Vegetais' AND descEst= 'Bom' And descPro = 'Batatas'
Select PID, EID, TPID FROM Produto JOIN Tipo_Prod on Tipo_Prod.TPID=Produto.Tipo_ProdTPID JOIN Estado on Estado.EID=Produto.EstadoEID WHERE descTProd='Vegetais' AND descEst= 'Bom' AND descPro= 'Batatas' GROUP BY PID, EID, TPID, descPro

UPDATE Produto SET quantidade= '5'  WHERE PID= 3

select * from CP
select * from Morada
select * from Utilizador
select * from Cliente
select * from Fornecedor
select * from Contacto

delete from CP where CPID= 1018
delete from Morada where MID=1022
delete from Utilizador where UID=1021
delete from Contacto where UtilizadorUID=1018

UPDATE Utilizador SET Tipo_UtilizadorTUID= 2  WHERE UID= 1022
UPDATE Utilizador SET password= 'alfa2000'  WHERE UID= 1022

UPDATE Cliente SET nome= 'caminho2000'  WHERE UtilizadorUID= 1023
UPDATE Fornecedor SET nome= 'Alfa'  WHERE UtilizadorUID= 1022
UPDATE Contacto SET numero= '961873444'  WHERE UtilizadorUID= 1023

Insert into Contacto (numero,Tipo_ContactoTCID,UtilizadorUID) VALUES ('252793164',1,1015)
Insert into Cliente (nome,descCli,UtilizadorUID) VALUES ('Caritas','Instituição',1015)

select * from Produto
select * from Doacao
select * from Doa_Prod

Update Produto SET quantidade = 2 where PID=1

delete from Doa_Prod where DoacaoDID = 2
delete from Doacao where DID = 2
--1022
-- alfa2000

-- Adicionar 1 kg ao alface, vegetais e bom

 CREATE PROCEDURE ListaProdutos

 AS
 BEGIN TRANSACTION
 SELECT PID, descPro, forma_Pro, quantidade, descTProd, descEst FROM Produto 
                               JOIN Tipo_Prod on Produto.Tipo_ProdTPID=Tipo_Prod.TPID 
                               JOIN Estado on Estado.EID=Produto.EstadoEID
 IF @@ERROR <> 0
 ROLLBACK TRANSACTION
 ELSE
 COMMIT TRANSACTION

 ListaProdutos