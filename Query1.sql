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
--INSERT INTO Morada(rua, CPCPID) VALUES ('Travessa da Liberdade', 1)
---------------------------------------------------------------------------

Select * from Contacto
--INSERT INTO Contacto(numero, Tipo_ContactoTCID, UtilizadorUID) VALUES ('252491497', 1, 1)
---------------------------------------------------------------------------
Select * from Utilizador
INSERT INTO Utilizador(password,Tipo_UtilizadorTUID, MoradaMID) VALUES ('12345',1, 1)
-- Criar um Cliente(id 1) com o telefone 252491497 e mora na travessa da liberdade = 1, password 12345, utilizador numero 1

------------------------------------------------------------------------------

Select * from Cliente
INSERT INTO Cliente(nome, descCli, UtilizadorUID) VALUES ('Mundos de Vida', 'Instituicao', 1)


