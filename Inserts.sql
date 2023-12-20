
-- Create tempo table
CREATE TABLE tempo (
    idtempo int PRIMARY KEY,
    ano int,
    mes int,
    dia int,
    hora int,
    minuto int
);

-- Create cliente table
CREATE TABLE cliente (
    idcliente int PRIMARY KEY,
    nomecliente varchar(512),
    morada varchar(512),
    localidade varchar(512)
);

-- Create produto table
CREATE TABLE produto (
    idproduto int PRIMARY KEY,
    nomeproduto varchar(512),
    sku varchar(512),
    upc varchar(512),
    quantidadestock int,
    nomeloja varchar(512),
    cidadeloja varchar(512),
    precocompra float,
    departamento varchar(512)
);

-- Create promocao table
CREATE TABLE promocao (
    id_promocao int PRIMARY KEY,
    nomepromocao varchar(512),
    desconto float,
    datainicio date,
    datefim date
);

-- Create venda table
CREATE TABLE venda (
    idvenda int PRIMARY KEY,
    quantidadevenda int,
    precounitario float,
    valorvenda float,
    promocao_id_promocao int,
    produto_idproduto int NOT NULL,
    cliente_idcliente int NOT NULL,
    tempo_idtempo int NOT NULL,
    FOREIGN KEY (promocao_id_promocao) REFERENCES promocao(id_promocao),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto),
    FOREIGN KEY (cliente_idcliente) REFERENCES cliente(idcliente),
    FOREIGN KEY (tempo_idtempo) REFERENCES tempo(idtempo)
);


INSERT INTO promocao (id_promocao, nomepromocao, desconto, datainicio, datefim) VALUES
(1, 'Promoção Verão', 0.15, '2023-06-01', '2023-08-31'),
(2, 'Desconto Especial', 0.10, '2023-01-15', '2023-02-28'),
(3, 'Oferta Relâmpago', 0.20, '2023-03-10', '2023-03-12'),
(4, 'Black Friday', 0.25, '2023-11-24', '2023-11-26'),
(5, 'Promoção de Aniversário', 0.18, '2023-05-05', '2023-05-10'),
(6, 'Desconto Semanal', 0.12, '2023-02-01', '2023-02-07'),
(7, 'Promoção especial', 0.30, '2023-09-15', '2023-09-30'),
(8, 'Promoção de Inverno', 0.22, '2023-12-01', '2024-02-29'),
(9, 'Dia dos Namorados', 0.15, '2023-06-12', '2023-06-12'),
(10, 'Especial Clientes VIP', 0.25, '2023-04-01', '2023-04-07'),
(11, 'Promoção de Primavera', 0.18, '2023-03-20', '2023-06-20'),
(12, 'Desconto de Fim de Semana', 0.10, '2023-07-08', '2023-07-09'),
(13, 'Promoção de Carnaval', 0.20, '2023-02-25', '2023-02-28'),
(14, 'Oferta do Dia', 0.15, '2023-05-20', '2023-05-20'),
(15, 'Desconto de Boas-Vindas', 0.10, '2023-01-01', '2023-01-07'),
(16, 'Cyber Monday', 0.30, '2023-11-27', '2023-11-27'),
(17, 'Promoção de Páscoa', 0.15, '2023-04-01', '2023-04-10'),
(18, 'Desconto na Segunda-Feira', 0.12, '2023-08-07', '2023-08-07'),
(19, 'Semana do Cliente', 0.25, '2023-09-10', '2023-09-17'),
(20, 'Promoção de Natal', 0.35, '2023-12-15', '2023-12-25'),
(21, 'Desconto de Meia-Noite', 0.20, '2023-05-15', '2023-05-15'),
(22, 'Promoção de Volta às Aulas', 0.15, '2023-01-20', '2023-02-28'),
(23, 'Oferta de Ano Novo', 0.25, '2023-12-31', '2024-01-01'),
(24, 'Desconto de Aniversário da Loja', 0.18, '2023-07-01', '2023-07-05'),
(25, 'Promoção de Halloween', 0.20, '2023-10-25', '2023-10-31'),
(26, 'Desconto da Tarde', 0.12, '2023-03-15', '2023-03-15'),
(27, 'Promoção de Agradecimento', 0.15, '2023-11-15', '2023-11-20'),
(28, 'Desconto de Última Hora', 0.25, '2023-09-30', '2023-09-30'),
(29, 'Promoção de Verão', 0.20, '2023-06-21', '2023-09-21'),
(30, 'Desconto de Primavera', 0.18, '2023-04-01', '2023-06-01'),
(31, 'Oferta de Fevereiro', 0.12, '2023-02-01', '2023-02-28'),
(32, 'Promoção de Ação de Graças', 0.30, '2023-11-23', '2023-11-23'),
(33, 'Desconto de Dia Útil', 0.15, '2023-08-03', '2023-08-03'),
(34, 'Semana da Moda', 0.25, '2023-10-10', '2023-10-17'),
(35, 'Promoção de Inauguração', 0.18, '2023-03-01', '2023-03-07'),
(36, 'Desconto de Meio de Semana', 0.12, '2023-05-10', '2023-05-12'),
(37, 'Promoção de Aquecimento', 0.20, '2023-09-01', '2023-09-05'),
(38, 'Desconto de Feriado', 0.25, '2023-12-24', '2023-12-26'),
(39, 'Oferta de Julho', 0.15, '2023-07-01', '2023-07-31'),
(40, 'Promoção de Ano Novo Chinês', 0.18, '2023-01-25', '2023-02-05'),
(41, 'Desconto Exclusivo Online', 0.20, '2023-04-05', '2023-04-10'),
(42, 'Semana do Meio Ambiente', 0.15, '2023-06-05', '2023-06-11'),
(43, 'Promoção de Volta do Feriado', 0.10, '2023-08-21', '2023-08-25'),
(44, 'Desconto de Outono', 0.22, '2023-09-23', '2023-12-21'),
(45, 'Promoção de Sexta-Feira 13', 0.13, '2023-10-13', '2023-10-13'),
(46, 'Desconto Relâmpago de Natal', 0.30, '2023-12-20', '2023-12-21'),
(47, 'Promoção de Agradecimento aos Clientes', 0.15, '2023-11-28', '2023-11-30'),
(48, 'Desconto de Fim de Ano', 0.25, '2023-12-28', '2023-12-31'),
(49, 'Oferta de Setembro', 0.18, '2023-09-01', '2023-09-30'),
(50, 'Desconto Especial de Aniversário', 0.20, '2023-03-05', '2023-03-10');

INSERT INTO cliente (idcliente, nomecliente, morada, localidade) VALUES
(1, 'João Silva', 'Rua da Liberdade, nº 123', 'Lisboa'),
(2, 'Maria Oliveira', 'Avenida da República, nº 456', 'Porto'),
(3, 'Pedro Santos', 'Travessa dos Cedros, nº 789', 'Braga'),
(4, 'Ana Pereira', 'Rua das Oliveiras, nº 101', 'Coimbra'),
(5, 'Luís Costa', 'Avenida dos Plátanos, nº 202', 'Faro'),
(6, 'Marta Almeida', 'Travessa das Rosas, nº 303', 'Aveiro'),
(7, 'Carlos Mendes', 'Rua das Amendoeiras, nº 404', 'Évora'),
(8, 'Sofia Rocha', 'Avenida dos Girassóis, nº 505', 'Bragança'),
(9, 'Rui Ferreira', 'Travessa dos Lírios, nº 606', 'Guarda'),
(10, 'Catarina Oliveira', 'Rua dos Cravos, nº 707', 'Leiria'),
(11, 'Manuel Fernandes', 'Avenida das Oliveiras, nº 808', 'Loulé'),
(12, 'Carla Santos', 'Travessa dos Crisântemos, nº 909', 'Vila Nova de Gaia'),
(13, 'Francisco Lima', 'Rua das Magnólias, nº 111', 'Ponta Delgada'),
(14, 'Mariana Costa', 'Avenida dos Jasmins, nº 222', 'Amadora'),
(15, 'António Pereira', 'Travessa das Hortênsias, nº 333', 'Amarante'),
(16, 'Beatriz Alves', 'Rua das Azáleas, nº 444', 'Sintra'),
(17, 'Diogo Rocha', 'Avenida dos Cravos, nº 555', 'Évora'),
(18, 'Ema Pires', 'Travessa das Begónias, nº 666', 'Viseu'),
(19, 'Gonçalo Fernandes', 'Rua das Orquídeas, nº 777', 'Tomar'),
(20, 'Helena Oliveira', 'Avenida das Violetas, nº 888', 'Barcelos'),
(21, 'Igor Santos', 'Travessa das Margaridas, nº 999', 'Vila Real'),
(22, 'Jéssica Lima', 'Rua dos Pinheiros, nº 1212', 'Santarém'),
(23, 'Kevin Costa', 'Avenida das Acácias, nº 1313', 'Loures'),
(24, 'Liliana Almeida', 'Travessa das Begónias, nº 1414', 'Odivelas'),
(25, 'Miguel Fernandes', 'Rua dos Girassóis, nº 1515', 'Maia'),
(26, 'Natália Rocha', 'Avenida dos Crisântemos, nº 1616', 'Matosinhos'),
(27, 'Óscar Pires', 'Travessa das Orquídeas, nº 1717', 'Vila Franca de Xira'),
(28, 'Paula Lima', 'Rua das Azáleas, nº 1818', 'Póvoa de Varzim'),
(29, 'Quim Santos', 'Avenida das Violetas, nº 1919', 'Seixal'),
(30, 'Rita Oliveira', 'Travessa dos Lírios, nº 2020', 'Funchal'),
(31, 'Isabel Pereira', 'Rua dos Cravos, nº 1010', 'Leiria'),
(32, 'João Santos', 'Travessa das Begónias, nº 1212', 'Viseu'),
(33, 'Lara Oliveira', 'Avenida dos Girassóis, nº 1313', 'Bragança'),
(34, 'Miguel Fernandes', 'Rua das Azáleas, nº 1414', 'Sintra'),
(35, 'Nádia Rocha', 'Travessa dos Lírios, nº 1515', 'Faro'),
(36, 'Óscar Lima', 'Avenida das Violetas, nº 1616', 'Barcelos'),
(37, 'Patrícia Pires', 'Rua das Hortênsias, nº 1717', 'Amarante'),
(38, 'Quim Santos', 'Travessa das Orquídeas, nº 1818', 'Évora'),
(39, 'Rita Oliveira', 'Avenida da República, nº 1919', 'Póvoa de Varzim'),
(40, 'Sérgio Pereira', 'Travessa dos Crisântemos, nº 2020', 'Funchal'),
(41, 'Isabel Pereira', 'Rua dos Cravos, nº 1010', 'Leiria'),
(42, 'João Santos', 'Travessa das Begónias, nº 1212', 'Viseu'),
(43, 'Lara Oliveira', 'Avenida dos Girassóis, nº 1313', 'Bragança'),
(44, 'Miguel Fernandes', 'Rua das Azáleas, nº 1414', 'Sintra'),
(45, 'Nádia Rocha', 'Travessa dos Lírios, nº 1515', 'Faro'),
(46, 'Óscar Lima', 'Avenida das Violetas, nº 1616', 'Barcelos'),
(47, 'Patrícia Pires', 'Rua das Hortênsias, nº 1717', 'Amarante'),
(48, 'Quim Santos', 'Travessa das Orquídeas, nº 1818', 'Évora'),
(49, 'Rita Oliveira', 'Avenida da República, nº 1919', 'Póvoa de Varzim'),
(50, 'Sérgio Pereira', 'Travessa dos Crisântemos, nº 2020', 'Funchal'),
(51, 'Tânia Alves', 'Rua das Magnólias, nº 2121', 'Loures'),
(52, 'Umberto Rocha', 'Travessa dos Lírios, nº 2222', 'Vila Nova de Famalicão'),
(53, 'Vânia Costa', 'Avenida dos Cravos, nº 2323', 'Santa Maria da Feira'),
(54, 'Wilson Fernandes', 'Rua das Tulipas, nº 2424', 'Queluz'),
(55, 'Xana Lima', 'Travessa das Orquídeas, nº 2525', 'Rio Tinto'),
(56, 'Yara Pires', 'Avenida das Violetas, nº 2626', 'Caldas da Rainha'),
(57, 'Zé Silva', 'Rua das Azáleas, nº 2727', 'Gondomar'),
(58, 'Ana Luísa Oliveira', 'Travessa das Hortênsias, nº 2828', 'Oeiras'),
(59, 'Bruno Santos', 'Avenida das Azáleas, nº 2929', 'Loures'),
(60, 'Cátia Pereira', 'Rua das Margaridas, nº 3030', 'Ponta Delgada'),
(61, 'Nuno Oliveira', 'Rua das Hortênsias, nº 999', 'Aveiro'),
(62, 'Olga Santos', 'Travessa dos Cedros, nº 888', 'Braga'),
(63, 'Paulo Lima', 'Avenida da República, nº 777', 'Lisboa'),
(64, 'Quintino Rocha', 'Rua dos Girassóis, nº 666', 'Porto'),
(65, 'Rosa Pires', 'Travessa das Orquídeas, nº 555', 'Faro'),
(66, 'Sérgio Fernandes', 'Avenida dos Crisântemos, nº 444', 'Sintra'),
(67, 'Teresa Alves', 'Rua das Azáleas, nº 333', 'Évora'),
(68, 'Umbelina Oliveira', 'Travessa das Begónias, nº 222', 'Viseu'),
(69, 'Vasco Costa', 'Avenida das Violetas, nº 111', 'Barcelos'),
(70, 'Carlos Pinto', 'Avenida das Rosas, nº 169', 'Coimbra'),
(71, 'Sérgio Pereira', 'Avenida da República, nº 7878', 'Portimão'),
(72, 'Tânia Alves', 'Travessa das Rosas, nº 7979', 'Barreiro'),
(73, 'Umberto Rocha', 'Rua das Amendoeiras, nº 8080', 'Vila Nova de Famalicão'),
(74, 'Vânia Costa', 'Avenida dos Girassóis, nº 8181', 'Santa Maria da Feira'),
(75, 'Wilson Fernandes', 'Travessa dos Cedros, nº 8282', 'Queluz'),
(76, 'Xana Lima', 'Rua das Tulipas, nº 8383', 'Rio Tinto'),
(77, 'Yara Pires', 'Avenida dos Cravos, nº 8484', 'Caldas da Rainha'),
(78, 'Zé Silva', 'Travessa das Hortênsias, nº 8585', 'Gondomar'),
(79, 'Ana Luísa Oliveira', 'Rua das Oliveiras, nº 8686', 'Oeiras'),
(80, 'Bruno Santos', 'Avenida das Azáleas, nº 8787', 'Loures'),
(81, 'Cátia Pereira', 'Travessa dos Crisântemos, nº 8888', 'Ponta Delgada'),
(82, 'David Costa', 'Rua das Margaridas, nº 8989', 'Amadora'),
(83, 'Elisa Almeida', 'Avenida dos Jasmins, nº 9090', 'Amarante'),
(84, 'Fábio Fernandes', 'Travessa dos Lírios, nº 9191', 'Sintra'),
(85, 'Gisela Rocha', 'Rua dos Cravos, nº 9292', 'Évora'),
(86, 'Hélder Pires', 'Avenida das Violetas, nº 9393', 'Viseu'),
(87, 'Ingrid Lima', 'Travessa das Orquídeas, nº 9494', 'Tomar'),
(88, 'Joel Santos', 'Rua das Azáleas, nº 9595', 'Barcelos'),
(89, 'Kátia Oliveira', 'Avenida da República, nº 9696', 'Póvoa de Varzim'),
(90, 'Leandro Costa', 'Travessa das Rosas, nº 9797', 'Seixal'),
(91, 'Fernanda Santos', 'Rua das Hortênsias, nº 808', 'Viseu'),
(92, 'Hugo Lima', 'Avenida das Acácias, nº 909', 'Castelo Branco'),
(93, 'Carolina Pereira', 'Travessa das Margaridas, nº 111', 'Setúbal'),
(94, 'Daniel Costa', 'Rua dos Pinheiros, nº 222', 'Portalegre'),
(95, 'Eduarda Alves', 'Avenida das Azáleas, nº 333', 'Santarém'),
(96, 'Gabriel Fernandes', 'Travessa das Begónias, nº 444', 'Vila Real'),
(97, 'Inês Pires', 'Rua das Violetas, nº 555', 'Porto'),
(98, 'Jorge Oliveira', 'Avenida dos Jasmins, nº 666', 'Lisboa'),
(99, 'Lara Santos', 'Travessa das Orquídeas, nº 777', 'Faro'),
(100, 'Manuel Costa', 'Rua das Tulipas, nº 888', 'Braga');

INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(21, 'Arroz Integral', '123456789012', '123456789012', 1200, 'PingoCheio Lisboa', 'Lisboa', 2.49, 'mercearia'),
(22, 'Azeite Extra Virgem', '234567890123', '234567890123', 1020, 'PingoCheio Lisboa', 'Lisboa', 7.99, 'mercearia'),
(23, 'Feijão Branco', '345678901234', '345678901234', 1300, 'PingoCheio Lisboa', 'Lisboa', 1.99, 'mercearia'),
(24, 'Cerveja Artesanal', '456789012345', '456789012345', 1300, 'PingoCheio Lisboa', 'Lisboa', 3.49, 'bebidas'),
(25, 'Chocolate Amargo', '567890123456', '567890123456', 1500, 'PingoCheio Lisboa', 'Lisboa', 4.99, 'doces'),
(26, 'Detergente Líquido', '678901234567', '678901234567', 1400, 'PingoCheio Lisboa', 'Lisboa', 2.99, 'limpeza'),
(27, 'Macarrão Integral', '789012345678', '789012345678', 1201, 'PingoCheio Lisboa', 'Lisboa', 1.79, 'mercearia'),
(28, 'Café em Grãos', '890123456789', '890123456789', 1206, 'PingoCheio Lisboa', 'Lisboa', 6.99, 'mercearia'),
(29, 'Água Mineral', '901234567890', '901234567890', 1300, 'PingoCheio Lisboa', 'Lisboa', 0.99, 'bebidas'),
(30, 'Sabonete Líquido', '012345678901', '012345678901', 1203, 'PingoCheio Lisboa', 'Lisboa', 3.29, 'limpeza'),
(31, 'Queijo Parmesão', '123456789012', '123456789012', 1400, 'PingoCheio Lisboa', 'Lisboa', 9.99, 'laticínios'),
(32, 'Iogurte Natural', '234567890123', '234567890123', 1402, 'PingoCheio Lisboa', 'Lisboa', 2.49, 'laticínios'),
(33, 'Maionese', '345678901234', '345678901234', 1200, 'PingoCheio Lisboa', 'Lisboa', 1.79, 'condimentos'),
(34, 'Molho de Tomate', '456789012345', '456789012345', 1290, 'PingoCheio Lisboa', 'Lisboa', 1.29, 'condimentos'),
(35, 'Espaguete', '567890123456', '567890123456', 4000, 'PingoCheio Lisboa', 'Lisboa', 1.59, 'mercearia'),
(36, 'Lâminas de Barbear', '678901234567', '678901234567', 1420, 'PingoCheio Lisboa', 'Lisboa', 4.99, 'higiene'),
(37, 'Shampoo Anticaspa', '789012345678', '789012345678', 1390, 'PingoCheio Lisboa', 'Lisboa', 5.49, 'higiene'),
(38, 'Frango Congelado', '890123456789', '890123456789', 1500, 'PingoCheio Lisboa', 'Lisboa', 7.99, 'carnes'),
(39, 'Salsichas', '901234567890', '901234567890', 1272, 'PingoCheio Lisboa', 'Lisboa', 3.99, 'charcutaria'),
(40, 'Cereal Matinal', '012345678901', '012345678901', 1320, 'PingoCheio Lisboa', 'Lisboa', 4.29, 'mercearia'),
(41, 'Amaciador de Roupas', '123456789012', '123456789012', 1800, 'PingoCheio Lisboa', 'Lisboa', 2.99, 'limpeza'),
(42, 'Vinho Tinto Reserva', '234567890123', '234567890123', 800, 'PingoCheio Lisboa', 'Lisboa', 12.99, 'bebidas'),
(43, 'Manteiga', '345678901234', '345678901234', 1404, 'PingoCheio Lisboa', 'Lisboa', 3.79, 'laticínios'),
(44, 'Tomate', '456789012345', '456789012345', 1248, 'PingoCheio Lisboa', 'Lisboa', 1.29, 'legumes'),
(45, 'Batata', '567890123456', '567890123456', 1420, 'PingoCheio Lisboa', 'Lisboa', 0.99, 'legumes'),
(46, 'Desodorizante Roll-On', '678901234567', '678901234567', 1820, 'PingoCheio Lisboa', 'Lisboa', 3.49, 'higiene'),
(47, 'Creme Dental', '789012345678', '789012345678', 1530, 'PingoCheio Lisboa', 'Lisboa', 1.99, 'higiene'),
(48, 'Papel Higiénico', '890123456789', '890123456789', 1220, 'PingoCheio Lisboa', 'Lisboa', 2.29, 'limpeza'),
(49, 'Sabão em Pó', '901234567890', '901234567890', 1320, 'PingoCheio Lisboa', 'Lisboa', 4.99, 'limpeza'),
(50, 'Mel', '012345678901', '012345678901', 920, 'PingoCheio Lisboa', 'Lisboa', 6.49, 'mercearia');

-- Adicionar mais produtos para atingir um total aproximado de 40.000 em estoque
INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(51, 'Arroz Integral', '123456789012', '123456789012', 1067, 'PingoCheio Porto', 'Porto', 2.49, 'mercearia'),
(52, 'Azeite Extra Virgem', '234567890123', '234567890123', 1202, 'PingoCheio Porto', 'Porto', 7.99, 'mercearia'),
(53, 'Feijão Branco', '345678901234', '345678901234', 859, 'PingoCheio Porto', 'Porto', 1.99, 'mercearia'),
(54, 'Cerveja Artesanal', '456789012345', '456789012345', 1200, 'PingoCheio Porto', 'Porto', 3.49, 'bebidas'),
(55, 'Chocolate Amargo', '567890123456', '567890123456', 962, 'PingoCheio Porto', 'Porto', 4.99, 'doces'),
(56, 'Detergente Líquido', '678901234567', '678901234567', 898, 'PingoCheio Porto', 'Porto', 2.99, 'limpeza'),
(57, 'Macarrão Integral', '789012345678', '789012345678', 1062, 'PingoCheio Porto', 'Porto', 1.79, 'mercearia'),
(58, 'Café em Grãos', '890123456789', '890123456789', 1395, 'PingoCheio Porto', 'Porto', 6.99, 'mercearia'),
(59, 'Água Mineral', '901234567890', '901234567890', 950, 'PingoCheio Porto', 'Porto', 0.99, 'bebidas'),
(60, 'Sabonete Líquido', '012345678901', '012345678901', 1179, 'PingoCheio Porto', 'Porto', 3.29, 'limpeza'),
(61, 'Queijo Parmesão', '123456789012', '123456789012', 1083, 'PingoCheio Porto', 'Porto', 9.99, 'laticínios'),
(62, 'Iogurte Natural', '234567890123', '234567890123', 1152, 'PingoCheio Porto', 'Porto', 2.49, 'laticínios'),
(63, 'Maionese', '345678901234', '345678901234', 1011, 'PingoCheio Porto', 'Porto', 1.79, 'condimentos'),
(64, 'Molho de Tomate', '456789012345', '456789012345', 1047, 'PingoCheio Porto', 'Porto', 1.29, 'condimentos'),
(65, 'Espaguete', '567890123456', '567890123456', 1163, 'PingoCheio Porto', 'Porto', 1.59, 'mercearia'),
(66, 'Lâminas de Barbear', '678901234567', '678901234567', 1252, 'PingoCheio Porto', 'Porto', 4.99, 'higiene'),
(67, 'Shampoo Anticaspa', '789012345678', '789012345678', 974, 'PingoCheio Porto', 'Porto', 5.49, 'higiene'),
(68, 'Frango Congelado', '890123456789', '890123456789', 1002, 'PingoCheio Porto', 'Porto', 7.99, 'carnes'),
(69, 'Salsichas', '901234567890', '901234567890', 833, 'PingoCheio Porto', 'Porto', 3.99, 'charcutaria'),
(70, 'Cereal Matinal', '012345678901', '012345678901', 1184, 'PingoCheio Porto', 'Porto', 4.29, 'mercearia'),
(71, 'Amaciador de Roupas', '123456789012', '123456789012', 982, 'PingoCheio Porto', 'Porto', 2.99, 'limpeza'),
(72, 'Vinho Tinto Reserva', '234567890123', '234567890123', 1248, 'PingoCheio Porto', 'Porto', 12.99, 'bebidas'),
(73, 'Manteiga', '345678901234', '345678901234', 1018, 'PingoCheio Porto', 'Porto', 3.79, 'laticínios'),
(74, 'Tomate', '456789012345', '456789012345', 915, 'PingoCheio Porto', 'Porto', 1.29, 'legumes'),
(75, 'Batata', '567890123456', '567890123456', 856, 'PingoCheio Porto', 'Porto', 0.99, 'legumes'),
(76, 'Desodorizante Roll-On', '678901234567', '678901234567', 1098, 'PingoCheio Porto', 'Porto', 3.49, 'higiene'),
(77, 'Creme Dental', '789012345678', '789012345678', 1113, 'PingoCheio Porto', 'Porto', 1.99, 'higiene'),
(78, 'Papel Higiénico', '890123456789', '890123456789', 1126, 'PingoCheio Porto', 'Porto', 2.29, 'limpeza'),
(79, 'Sabão em Pó', '901234567890', '901234567890', 1027, 'PingoCheio Porto', 'Porto', 4.99, 'limpeza'),
(80, 'Mel', '012345678901', '012345678901', 1204, 'PingoCheio Porto', 'Porto', 6.49, 'mercearia');


INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(1, 'Carne de Vaca', 'SKU001', NULL, 100, 'PingoCheio Lisboa', 'Lisboa', 5.99, 'talho'),
(2, 'Pão Integral', 'SKU002', NULL, 1500, 'PingoCheio Lisboa', 'Lisboa', 1.99, 'padaria'),
(3, 'Salmão Fresco', 'SKU003', NULL, 500, 'PingoCheio Lisboa', 'Lisboa', 10.99, 'peixaria'),
(4, 'Presunto Cru', 'SKU004', NULL, 750, 'PingoCheio Lisboa', 'Lisboa', 8.99, 'charcutaria'),
(5, 'Bolachas Artesanais', 'SKU005', NULL, 700, 'PingoCheio Lisboa', 'Lisboa', 3.49, 'padaria'),
(6, 'Pão de Mafra', 'SKU006', NULL, 400, 'PingoCheio Lisboa', 'Lisboa', 2.99, 'padaria'),
(7, 'Alho', 'SKU007', NULL, 1300, 'PingoCheio Lisboa', 'Lisboa', 4.99, 'mercearia'),
(8, 'Granola Caseira', 'SKU008', NULL, 1000, 'PingoCheio Lisboa', 'Lisboa', 6.49, 'mercearia'),
(9, 'Feijão Frade', 'SKU009', NULL, 700, 'PingoCheio Lisboa', 'Lisboa', 3.99, 'mercearia'),
(10, 'Amêndoas', 'SKU010', NULL, 1200, 'PingoCheio Lisboa', 'Lisboa', 2.29, 'mercearia'),
(11, 'Queijo Gouda', 'SKU011', NULL, 300, 'PingoCheio Lisboa', 'Lisboa', 7.49, 'laticínios'),
(12, 'Queijo Flamengo', 'SKU012', NULL, 500, 'PingoCheio Lisboa', 'Lisboa', 2.79, 'laticínios'),
(13, 'Ovos Orgânicos', 'SKU013', NULL, 400, 'PingoCheio Lisboa', 'Lisboa', 4.99, 'mercearia'),
(14, 'Leite de Amêndoas', 'SKU014', NULL, 600, 'PingoCheio Lisboa', 'Lisboa', 3.99, 'laticínios'),
(15, 'Cereal Matinal', 'SKU015', NULL, 800, 'PingoCheio Lisboa', 'Lisboa', 3.29, 'mercearia'),
(16, 'Massa Integral', 'SKU016', NULL, 700, 'PingoCheio Lisboa', 'Lisboa', 1.49, 'mercearia'),
(17, 'Feijão Preto', 'SKU017', NULL, 900, 'PingoCheio Lisboa', 'Lisboa', 2.19, 'mercearia'),
(18, 'Tomate Enlatado', 'SKU018', NULL, 1200, 'PingoCheio Lisboa', 'Lisboa', 1.79, 'mercearia'),
(19, 'Café Orgânico', 'SKU019', NULL, 300, 'PingoCheio Lisboa', 'Lisboa', 8.99, 'bebidas'),
(20, 'Chá Verde', 'SKU020', NULL, 500, 'PingoCheio Lisboa', 'Lisboa', 4.49, 'bebidas');

INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(81, 'Carne de Vaca', 'SKU001', NULL, 1125, 'PingoCheio Porto', 'Porto', 5.99, 'talho'),
(82, 'Pão Integral', 'SKU002', NULL, 975, 'PingoCheio Porto', 'Porto', 1.99, 'padaria'),
(83, 'Salmão Fresco', 'SKU003', NULL, 1050, 'PingoCheio Porto', 'Porto', 10.99, 'peixaria'),
(84, 'Presunto Cru', 'SKU004', NULL, 900, 'PingoCheio Porto', 'Porto', 8.99, 'charcutaria'),
(85, 'Bolachas Artesanais', 'SKU005', NULL, 1025, 'PingoCheio Porto', 'Porto', 3.49, 'padaria'),
(86, 'Pão de Mafra', 'SKU006', NULL, 975, 'PingoCheio Porto', 'Porto', 2.99, 'padaria'),
(87, 'Alho', 'SKU007', NULL, 975, 'PingoCheio Porto', 'Porto', 4.99, 'mercearia'),
(88, 'Granola Caseira', 'SKU008', NULL, 1125, 'PingoCheio Porto', 'Porto', 6.49, 'mercearia'),
(89, 'Feijão Frade', 'SKU009', NULL, 1050, 'PingoCheio Porto', 'Porto', 3.99, 'mercearia'),
(90, 'Amêndoas', 'SKU010', NULL, 900, 'PingoCheio Porto', 'Porto', 2.29, 'mercearia'),
(91, 'Queijo Gouda', 'SKU011', NULL, 975, 'PingoCheio Porto', 'Porto', 7.49, 'laticínios'),
(92, 'Queijo Flamengo', 'SKU012', NULL, 1050, 'PingoCheio Porto', 'Porto', 2.79, 'laticínios'),
(93, 'Ovos Orgânicos', 'SKU013', NULL, 1025, 'PingoCheio Porto', 'Porto', 4.99, 'mercearia'),
(94, 'Leite de Amêndoas', 'SKU014', NULL, 1125, 'PingoCheio Porto', 'Porto', 3.99, 'laticínios'),
(95, 'Cereal Matinal', 'SKU015', NULL, 975, 'PingoCheio Porto', 'Porto', 3.29, 'mercearia'),
(96, 'Massa Integral', 'SKU016', NULL, 1125, 'PingoCheio Porto', 'Porto', 1.49, 'mercearia'),
(97, 'Feijão Preto', 'SKU017', NULL, 1050, 'PingoCheio Porto', 'Porto', 2.19, 'mercearia'),
(98, 'Tomate Enlatado', 'SKU018', NULL, 975, 'PingoCheio Porto', 'Porto', 1.79, 'mercearia'),
(99, 'Café Orgânico', 'SKU019', NULL, 900, 'PingoCheio Porto', 'Porto', 8.99, 'bebidas'),
(100, 'Chá Verde', 'SKU020', NULL, 1125, 'PingoCheio Porto', 'Porto', 4.49, 'bebidas');


INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(101, 'Carne de Vaca', 'SKU001', NULL, 975, 'PingoCheio Algarve', 'Portimão', 5.99, 'talho'),
(102, 'Pão Integral', 'SKU002', NULL, 1050, 'PingoCheio Algarve', 'Portimão', 1.99, 'padaria'),
(103, 'Salmão Fresco', 'SKU003', NULL, 1125, 'PingoCheio Algarve', 'Portimão', 10.99, 'peixaria'),
(104, 'Presunto Cru', 'SKU004', NULL, 1025, 'PingoCheio Algarve', 'Portimão', 8.99, 'charcutaria'),
(105, 'Bolachas Artesanais', 'SKU005', NULL, 975, 'PingoCheio Algarve', 'Portimão', 3.49, 'padaria'),
(106, 'Pão de Mafra', 'SKU006', NULL, 1025, 'PingoCheio Algarve', 'Portimão', 2.99, 'padaria'),
(107, 'Alho', 'SKU007', NULL, 1050, 'PingoCheio Algarve', 'Portimão', 4.99, 'mercearia'),
(108, 'Granola Caseira', 'SKU008', NULL, 975, 'PingoCheio Algarve', 'Portimão', 6.49, 'mercearia'),
(109, 'Feijão Frade', 'SKU009', NULL, 1025, 'PingoCheio Algarve', 'Portimão', 3.99, 'mercearia'),
(110, 'Amêndoas', 'SKU010', NULL, 975, 'PingoCheio Algarve', 'Portimão', 2.29, 'mercearia'),
(111, 'Queijo Gouda', 'SKU011', NULL, 1125, 'PingoCheio Algarve', 'Portimão', 7.49, 'laticínios'),
(112, 'Queijo Flamengo', 'SKU012', NULL, 1050, 'PingoCheio Algarve', 'Portimão', 2.79, 'laticínios'),
(113, 'Ovos Orgânicos', 'SKU013', NULL, 975, 'PingoCheio Algarve', 'Portimão', 4.99, 'mercearia'),
(114, 'Leite de Amêndoas', 'SKU014', NULL, 1025, 'PingoCheio Algarve', 'Portimão', 3.99, 'laticínios'),
(115, 'Cereal Matinal', 'SKU015', NULL, 1050, 'PingoCheio Algarve', 'Portimão', 3.29, 'mercearia'),
(116, 'Massa Integral', 'SKU016', NULL, 975, 'PingoCheio Algarve', 'Portimão', 1.49, 'mercearia'),
(117, 'Feijão Preto', 'SKU017', NULL, 1125, 'PingoCheio Algarve', 'Portimão', 2.19, 'mercearia'),
(118, 'Tomate Enlatado', 'SKU018', NULL, 1025, 'PingoCheio Algarve', 'Portimão', 1.79, 'mercearia'),
(119, 'Café Orgânico', 'SKU019', NULL, 975, 'PingoCheio Algarve', 'Portimão', 8.99, 'bebidas'),
(120, 'Chá Verde', 'SKU020', NULL, 1050, 'PingoCheio Algarve', 'Portimão', 4.49, 'bebidas');


INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(121, 'Arroz Integral', '123456789012', '123456789012', 1206, 'PingoCheio Algarve', 'Portimão', 2.49, 'mercearia'),
(122, 'Azeite Extra Virgem', '234567890123', '234567890123', 1158, 'PingoCheio Algarve', 'Portimão', 7.99, 'mercearia'),
(123, 'Feijão Branco', '345678901234', '345678901234', 1348, 'PingoCheio Algarve', 'Portimão', 1.99, 'mercearia'),
(124, 'Cerveja Artesanal', '456789012345', '456789012345', 1126, 'PingoCheio Algarve', 'Portimão', 3.49, 'bebidas'),
(125, 'Chocolate Amargo', '567890123456', '567890123456', 1310, 'PingoCheio Algarve', 'Portimão', 4.99, 'doces'),
(126, 'Detergente Líquido', '678901234567', '678901234567', 1247, 'PingoCheio Algarve', 'Portimão', 2.99, 'limpeza'),
(127, 'Macarrão Integral', '789012345678', '789012345678', 1389, 'PingoCheio Algarve', 'Portimão', 1.79, 'mercearia'),
(128, 'Café em Grãos', '890123456789', '890123456789', 1255, 'PingoCheio Algarve', 'Portimão', 6.99, 'mercearia'),
(129, 'Água Mineral', '901234567890', '901234567890', 1407, 'PingoCheio Algarve', 'Portimão', 0.99, 'bebidas'),
(130, 'Sabonete Líquido', '012345678901', '012345678901', 1294, 'PingoCheio Algarve', 'Portimão', 3.29, 'limpeza'),
(131, 'Queijo Parmesão', '123456789012', '123456789012', 1257, 'PingoCheio Algarve', 'Portimão', 9.99, 'laticínios'),
(132, 'Iogurte Natural', '234567890123', '234567890123', 1355, 'PingoCheio Algarve', 'Portimão', 2.49, 'laticínios'),
(133, 'Maionese', '345678901234', '345678901234', 1198, 'PingoCheio Algarve', 'Portimão', 1.79, 'condimentos'),
(134, 'Molho de Tomate', '456789012345', '456789012345', 1269, 'PingoCheio Algarve', 'Portimão', 1.29, 'condimentos'),
(135, 'Espaguete', '567890123456', '567890123456', 1320, 'PingoCheio Algarve', 'Portimão', 1.59, 'mercearia'),
(136, 'Lâminas de Barbear', '678901234567', '678901234567', 1287, 'PingoCheio Algarve', 'Portimão', 4.99, 'higiene'),
(137, 'Shampoo Anticaspa', '789012345678', '789012345678', 1337, 'PingoCheio Algarve', 'Portimão', 5.49, 'higiene'),
(138, 'Frango Congelado', '890123456789', '890123456789', 1341, 'PingoCheio Algarve', 'Portimão', 7.99, 'carnes'),
(139, 'Salsichas', '901234567890', '901234567890', 1204, 'PingoCheio Algarve', 'Portimão', 3.99, 'charcutaria'),
(140, 'Cereal Matinal', '012345678901', '012345678901', 1220, 'PingoCheio Algarve', 'Portimão', 4.29, 'mercearia'),
(141, 'Amaciador de Roupas', '123456789012', '123456789012', 1280, 'PingoCheio Algarve', 'Portimão', 2.99, 'limpeza'),
(142, 'Vinho Tinto Reserva', '234567890123', '234567890123', 1382, 'PingoCheio Algarve', 'Portimão', 12.99, 'bebidas'),
(143, 'Manteiga', '345678901234', '345678901234', 1166, 'PingoCheio Algarve', 'Portimão', 3.79, 'laticínios'),
(144, 'Tomate', '456789012345', '456789012345', 1374, 'PingoCheio Algarve', 'Portimão', 1.29, 'legumes'),
(145, 'Batata', '567890123456', '567890123456', 1324, 'PingoCheio Algarve', 'Portimão', 0.99, 'legumes'),
(146, 'Desodorizante Roll-On', '678901234567', '678901234567', 1201, 'PingoCheio Algarve', 'Portimão', 3.49, 'higiene'),
(147, 'Creme Dental', '789012345678', '789012345678', 1333, 'PingoCheio Algarve', 'Portimão', 1.99, 'higiene'),
(148, 'Papel Higiénico', '890123456789', '890123456789', 1176, 'PingoCheio Algarve', 'Portimão', 2.29, 'limpeza'),
(149, 'Sabão em Pó', '901234567890', '901234567890', 1213, 'PingoCheio Algarve', 'Portimão', 4.99, 'limpeza'),
(150, 'Mel', '012345678901', '012345678901', 1379, 'PingoCheio Algarve', 'Portimão', 6.49, 'mercearia');

INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(151, 'Carne de Vaca', 'SKU001', NULL, 850, 'PingoCheio Amadora', 'Amadora', 5.99, 'talho'),
(152, 'Pão Integral', 'SKU002', NULL, 1100, 'PingoCheio Amadora', 'Amadora', 1.99, 'padaria'),
(153, 'Salmão Fresco', 'SKU003', NULL, 950, 'PingoCheio Amadora', 'Amadora', 10.99, 'peixaria'),
(154, 'Presunto Cru', 'SKU004', NULL, 1200, 'PingoCheio Amadora', 'Amadora', 8.99, 'charcutaria'),
(155, 'Bolachas Artesanais', 'SKU005', NULL, 1050, 'PingoCheio Amadora', 'Amadora', 3.49, 'padaria'),
(156, 'Pão de Mafra', 'SKU006', NULL, 950, 'PingoCheio Amadora', 'Amadora', 2.99, 'fabrico proprio'),
(157, 'Alho', 'SKU007', NULL, 1100, 'PingoCheio Amadora', 'Amadora', 4.99, 'mercearia'),
(158, 'Granola Caseira', 'SKU008', NULL, 850, 'PingoCheio Amadora', 'Amadora', 6.49, 'mercearia'),
(159, 'Feijão Frade', 'SKU009', NULL, 1050, 'PingoCheio Amadora', 'Amadora', 3.99, 'mercearia'),
(160, 'Amêndoas', 'SKU010', NULL, 1200, 'PingoCheio Amadora', 'Amadora', 2.29, 'mercearia'),
(161, 'Queijo Gouda', 'SKU011', NULL, 850, 'PingoCheio Amadora', 'Amadora', 7.49, 'laticínios'),
(162, 'Queijo Flamengo', 'SKU012', NULL, 950, 'PingoCheio Amadora', 'Amadora', 2.79, 'laticínios'),
(163, 'Ovos Orgânicos', 'SKU013', NULL, 1100, 'PingoCheio Amadora', 'Amadora', 4.99, 'mercearia'),
(164, 'Leite de Amêndoas', 'SKU014', NULL, 950, 'PingoCheio Amadora', 'Amadora', 3.99, 'laticínios'),
(165, 'Cereal Matinal', 'SKU015', NULL, 1200, 'PingoCheio Amadora', 'Amadora', 3.29, 'mercearia'),
(166, 'Massa Integral', 'SKU016', NULL, 1100, 'PingoCheio Amadora', 'Amadora', 1.49, 'mercearia'),
(167, 'Feijão Preto', 'SKU017', NULL, 850, 'PingoCheio Amadora', 'Amadora', 2.19, 'mercearia'),
(168, 'Tomate Enlatado', 'SKU018', NULL, 950, 'PingoCheio Amadora', 'Amadora', 1.79, 'mercearia'),
(169, 'Café Orgânico', 'SKU019', NULL, 1200, 'PingoCheio Amadora', 'Amadora', 8.99, 'bebidas'),
(170, 'Chá Verde', 'SKU020', NULL, 1050, 'PingoCheio Amadora', 'Amadora', 4.49, 'bebidas');

INSERT INTO produto (idproduto, nomeproduto, sku, upc, quantidadestock, nomeloja, cidadeloja, precocompra, departamento)
VALUES
(171, 'Arroz Integral', '123456789012', '123456789012', 1298, 'PingoCheio Amadora', 'Amadora', 2.49, 'mercearia'),
(172, 'Azeite Extra Virgem', '234567890123', '234567890123', 1222, 'PingoCheio Amadora', 'Amadora', 7.99, 'mercearia'),
(173, 'Feijão Branco', '345678901234', '345678901234', 1305, 'PingoCheio Amadora', 'Amadora', 1.99, 'mercearia'),
(174, 'Cerveja Artesanal', '456789012345', '456789012345', 1350, 'PingoCheio Amadora', 'Amadora', 3.49, 'bebidas'),
(175, 'Chocolate Amargo', '567890123456', '567890123456', 1265, 'PingoCheio Amadora', 'Amadora', 4.99, 'doces'),
(176, 'Detergente Líquido', '678901234567', '678901234567', 1379, 'PingoCheio Amadora', 'Amadora', 2.99, 'limpeza'),
(177, 'Macarrão Integral', '789012345678', '789012345678', 1290, 'PingoCheio Amadora', 'Amadora', 1.79, 'mercearia'),
(178, 'Café em Grãos', '890123456789', '890123456789', 1347, 'PingoCheio Amadora', 'Amadora', 6.99, 'mercearia'),
(179, 'Água Mineral', '901234567890', '901234567890', 1307, 'PingoCheio Amadora', 'Amadora', 0.99, 'bebidas'),
(180, 'Sabonete Líquido', '012345678901', '012345678901', 1268, 'PingoCheio Amadora', 'Amadora', 3.29, 'limpeza'),
(181, 'Queijo Parmesão', '123456789012', '123456789012', 1362, 'PingoCheio Amadora', 'Amadora', 9.99, 'laticínios'),
(182, 'Iogurte Natural', '234567890123', '234567890123', 1355, 'PingoCheio Amadora', 'Amadora', 2.49, 'laticínios'),
(183, 'Maionese', '345678901234', '345678901234', 1247, 'PingoCheio Amadora', 'Amadora', 1.79, 'condimentos'),
(184, 'Molho de Tomate', '456789012345', '456789012345', 1272, 'PingoCheio Amadora', 'Amadora', 1.29, 'condimentos'),
(185, 'Espaguete', '567890123456', '567890123456', 1298, 'PingoCheio Amadora', 'Amadora', 1.59, 'mercearia'),
(186, 'Lâminas de Barbear', '678901234567', '678901234567', 1357, 'PingoCheio Amadora', 'Amadora', 4.99, 'higiene'),
(187, 'Shampoo Anticaspa', '789012345678', '789012345678', 1309, 'PingoCheio Amadora', 'Amadora', 5.49, 'higiene'),
(188, 'Frango Congelado', '890123456789', '890123456789', 1337, 'PingoCheio Amadora', 'Amadora', 7.99, 'carnes'),
(189, 'Salsichas', '901234567890', '901234567890', 1224, 'PingoCheio Amadora', 'Amadora', 3.99, 'charcutaria'),
(190, 'Cereal Matinal', '012345678901', '012345678901', 1271, 'PingoCheio Amadora', 'Amadora', 4.29, 'mercearia'),
(191, 'Amaciador de Roupas', '123456789012', '123456789012', 1342, 'PingoCheio Amadora', 'Amadora', 2.99, 'limpeza'),
(192, 'Vinho Tinto Reserva', '234567890123', '234567890123', 1370, 'PingoCheio Amadora', 'Amadora', 12.99, 'bebidas'),
(193, 'Manteiga', '345678901234', '345678901234', 1236, 'PingoCheio Amadora', 'Amadora', 3.79, 'laticínios'),
(194, 'Tomate', '456789012345', '456789012345', 1290, 'PingoCheio Amadora', 'Amadora', 1.29, 'legumes'),
(195, 'Batata', '567890123456', '567890123456', 1280, 'PingoCheio Amadora', 'Amadora', 0.99, 'legumes'),
(196, 'Desodorizante Roll-On', '678901234567', '678901234567', 1382, 'PingoCheio Amadora', 'Amadora', 3.49, 'higiene'),
(197, 'Creme Dental', '789012345678', '789012345678', 1365, 'PingoCheio Amadora', 'Amadora', 1.99, 'higiene'),
(198, 'Papel Higiénico', '890123456789', '890123456789', 1220, 'PingoCheio Amadora', 'Amadora', 2.29, 'limpeza'),
(199, 'Sabão em Pó', '901234567890', '901234567890', 1289, 'PingoCheio Amadora', 'Amadora', 4.99, 'limpeza'),
(200, 'Mel', '012345678901', '012345678901', 1354, 'PingoCheio Amadora', 'Amadora', 6.49, 'mercearia');


insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (1, 2023, 2, 23, 11, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (2, 2022, 5, 21, 10, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (3, 2022, 5, 13, 15, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (4, 2022, 12, 17, 21, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (5, 2022, 2, 28, 14, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (6, 2023, 6, 3, 16, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (7, 2023, 12, 19, 19, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (8, 2022, 11, 13, 9, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (9, 2022, 6, 3, 23, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (10, 2022, 2, 21, 8, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (11, 2022, 9, 27, 11, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (12, 2022, 10, 20, 19, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (13, 2023, 11, 18, 23, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (14, 2022, 9, 10, 21, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (15, 2023, 9, 1, 23, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (16, 2023, 3, 13, 10, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (17, 2022, 5, 24, 23, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (18, 2022, 11, 28, 23, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (19, 2022, 7, 3, 22, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (20, 2022, 1, 16, 12, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (21, 2023, 2, 21, 22, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (22, 2022, 6, 13, 11, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (23, 2023, 10, 11, 12, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (24, 2023, 7, 7, 16, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (25, 2022, 9, 9, 14, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (26, 2023, 5, 8, 13, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (27, 2022, 10, 14, 20, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (28, 2022, 4, 3, 12, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (29, 2022, 9, 16, 22, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (30, 2023, 1, 28, 23, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (31, 2022, 9, 24, 16, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (32, 2023, 1, 11, 15, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (33, 2023, 12, 13, 13, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (34, 2022, 5, 14, 16, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (35, 2023, 3, 10, 10, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (36, 2023, 11, 18, 22, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (37, 2023, 5, 7, 17, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (38, 2023, 12, 22, 22, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (39, 2023, 1, 28, 22, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (40, 2023, 11, 15, 20, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (41, 2023, 12, 13, 10, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (42, 2023, 11, 15, 10, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (43, 2023, 3, 25, 8, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (44, 2023, 8, 13, 17, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (45, 2022, 11, 13, 13, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (46, 2023, 10, 27, 11, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (47, 2023, 8, 17, 8, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (48, 2023, 4, 19, 19, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (49, 2023, 4, 10, 20, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (50, 2023, 9, 9, 12, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (51, 2023, 10, 20, 14, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (52, 2022, 10, 3, 12, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (53, 2023, 1, 12, 9, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (54, 2023, 10, 13, 18, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (55, 2022, 9, 5, 20, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (56, 2023, 7, 23, 19, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (57, 2023, 4, 7, 15, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (58, 2023, 5, 28, 11, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (59, 2022, 10, 8, 19, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (60, 2022, 7, 27, 20, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (61, 2023, 1, 8, 21, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (62, 2023, 1, 1, 18, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (63, 2023, 3, 28, 12, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (64, 2023, 7, 5, 17, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (65, 2023, 10, 22, 15, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (66, 2023, 9, 5, 10, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (67, 2023, 8, 10, 15, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (68, 2023, 7, 24, 23, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (69, 2022, 10, 20, 20, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (70, 2023, 9, 25, 8, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (71, 2022, 10, 10, 13, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (72, 2022, 4, 11, 10, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (73, 2023, 8, 21, 9, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (74, 2022, 11, 14, 21, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (75, 2023, 8, 3, 9, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (76, 2022, 6, 23, 9, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (77, 2022, 12, 18, 21, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (78, 2023, 9, 14, 17, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (79, 2023, 10, 2, 15, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (80, 2023, 9, 10, 12, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (81, 2022, 2, 28, 18, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (82, 2022, 6, 11, 10, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (83, 2022, 8, 1, 8, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (84, 2023, 7, 14, 10, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (85, 2023, 10, 11, 8, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (86, 2022, 9, 23, 9, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (87, 2022, 11, 7, 17, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (88, 2022, 9, 1, 23, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (89, 2022, 8, 1, 10, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (90, 2023, 8, 6, 23, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (91, 2022, 5, 2, 15, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (92, 2022, 1, 5, 13, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (93, 2022, 12, 6, 19, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (94, 2022, 9, 18, 13, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (95, 2022, 3, 23, 8, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (96, 2023, 2, 27, 22, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (97, 2023, 7, 1, 10, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (98, 2023, 8, 9, 11, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (99, 2022, 9, 22, 11, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (100, 2022, 7, 9, 9, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (101, 2022, 6, 15, 16, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (102, 2022, 3, 14, 17, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (103, 2023, 3, 11, 9, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (104, 2023, 8, 24, 18, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (105, 2023, 12, 23, 16, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (106, 2022, 6, 5, 22, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (107, 2023, 10, 28, 16, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (108, 2023, 9, 6, 18, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (109, 2022, 12, 28, 22, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (110, 2022, 11, 12, 17, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (111, 2022, 12, 24, 19, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (112, 2022, 11, 16, 23, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (113, 2023, 6, 21, 21, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (114, 2023, 10, 8, 16, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (115, 2023, 2, 22, 8, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (116, 2023, 10, 11, 15, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (117, 2023, 10, 5, 18, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (118, 2022, 7, 18, 12, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (119, 2023, 10, 14, 18, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (120, 2023, 12, 25, 15, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (121, 2023, 4, 4, 17, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (122, 2023, 12, 10, 22, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (123, 2023, 8, 2, 10, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (124, 2023, 11, 11, 11, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (125, 2023, 12, 4, 10, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (126, 2022, 10, 16, 22, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (127, 2023, 8, 24, 14, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (128, 2022, 11, 1, 10, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (129, 2022, 10, 10, 19, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (130, 2023, 6, 16, 16, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (131, 2022, 9, 22, 15, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (132, 2022, 8, 3, 9, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (133, 2022, 9, 2, 22, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (134, 2023, 3, 5, 14, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (135, 2022, 2, 7, 20, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (136, 2023, 4, 7, 12, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (137, 2022, 2, 7, 21, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (138, 2023, 10, 20, 14, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (139, 2022, 12, 6, 16, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (140, 2022, 11, 25, 16, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (141, 2023, 2, 8, 13, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (142, 2023, 9, 5, 8, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (143, 2022, 11, 25, 15, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (144, 2022, 6, 6, 14, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (145, 2023, 6, 19, 12, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (146, 2023, 6, 20, 16, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (147, 2023, 2, 19, 22, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (148, 2022, 5, 18, 15, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (149, 2022, 8, 27, 14, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (150, 2022, 6, 22, 10, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (151, 2022, 10, 14, 10, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (152, 2022, 4, 12, 21, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (153, 2022, 6, 4, 10, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (154, 2023, 9, 15, 13, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (155, 2022, 2, 11, 23, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (156, 2022, 1, 22, 14, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (157, 2022, 9, 3, 15, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (158, 2022, 8, 10, 20, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (159, 2023, 6, 23, 19, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (160, 2022, 9, 23, 15, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (161, 2022, 3, 22, 14, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (162, 2022, 11, 18, 23, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (163, 2022, 4, 18, 13, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (164, 2023, 5, 27, 22, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (165, 2023, 5, 18, 11, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (166, 2023, 2, 17, 20, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (167, 2022, 2, 12, 15, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (168, 2023, 10, 7, 18, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (169, 2023, 7, 11, 12, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (170, 2023, 9, 9, 8, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (171, 2023, 11, 16, 13, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (172, 2022, 1, 9, 13, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (173, 2023, 8, 17, 18, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (174, 2023, 7, 12, 11, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (175, 2022, 9, 22, 13, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (176, 2023, 10, 10, 23, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (177, 2022, 11, 16, 10, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (178, 2022, 4, 8, 22, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (179, 2023, 4, 13, 10, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (180, 2022, 4, 18, 19, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (181, 2022, 9, 8, 8, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (182, 2023, 9, 9, 18, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (183, 2022, 11, 4, 21, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (184, 2023, 2, 28, 15, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (185, 2023, 5, 22, 16, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (186, 2023, 8, 26, 13, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (187, 2023, 11, 23, 16, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (188, 2022, 8, 4, 23, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (189, 2022, 2, 6, 10, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (190, 2023, 2, 14, 17, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (191, 2022, 7, 28, 21, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (192, 2023, 1, 21, 16, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (193, 2022, 1, 12, 21, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (194, 2023, 1, 22, 17, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (195, 2022, 9, 28, 16, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (196, 2023, 8, 18, 22, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (197, 2022, 12, 2, 11, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (198, 2023, 8, 24, 12, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (199, 2022, 3, 14, 17, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (200, 2022, 1, 27, 22, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (201, 2022, 1, 20, 13, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (202, 2022, 4, 25, 21, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (203, 2022, 12, 16, 9, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (204, 2023, 6, 24, 18, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (205, 2022, 9, 6, 8, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (206, 2023, 8, 27, 12, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (207, 2023, 4, 12, 21, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (208, 2023, 10, 12, 21, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (209, 2023, 1, 19, 18, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (210, 2022, 1, 25, 8, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (211, 2023, 10, 15, 10, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (212, 2022, 6, 10, 16, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (213, 2022, 9, 10, 23, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (214, 2023, 10, 21, 19, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (215, 2023, 11, 1, 10, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (216, 2022, 8, 5, 21, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (217, 2023, 10, 8, 18, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (218, 2023, 1, 26, 17, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (219, 2022, 5, 12, 17, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (220, 2023, 2, 27, 12, 13);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (221, 2022, 9, 22, 14, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (222, 2023, 5, 27, 15, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (223, 2022, 8, 4, 23, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (224, 2022, 6, 1, 21, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (225, 2023, 6, 16, 21, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (226, 2022, 9, 2, 11, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (227, 2022, 4, 6, 9, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (228, 2022, 5, 12, 14, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (229, 2022, 1, 7, 13, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (230, 2022, 6, 13, 11, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (231, 2023, 7, 25, 13, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (232, 2023, 7, 10, 16, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (233, 2022, 11, 13, 22, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (234, 2022, 3, 15, 10, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (235, 2022, 3, 26, 21, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (236, 2022, 4, 10, 22, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (237, 2023, 12, 5, 15, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (238, 2022, 4, 26, 15, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (239, 2023, 6, 25, 9, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (240, 2023, 8, 1, 23, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (241, 2023, 1, 19, 20, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (242, 2023, 2, 10, 12, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (243, 2022, 11, 22, 11, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (244, 2023, 3, 27, 16, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (245, 2022, 3, 5, 11, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (246, 2023, 11, 15, 21, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (247, 2023, 9, 18, 20, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (248, 2023, 8, 19, 10, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (249, 2022, 6, 8, 9, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (250, 2022, 4, 17, 12, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (251, 2022, 7, 15, 12, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (252, 2023, 1, 12, 18, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (253, 2023, 1, 26, 14, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (254, 2023, 8, 1, 8, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (255, 2022, 7, 9, 19, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (256, 2023, 7, 24, 14, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (257, 2022, 11, 24, 12, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (258, 2023, 12, 10, 12, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (259, 2023, 1, 28, 17, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (260, 2023, 7, 1, 22, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (261, 2023, 6, 28, 13, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (262, 2022, 12, 9, 9, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (263, 2022, 12, 20, 20, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (264, 2022, 12, 18, 15, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (265, 2023, 8, 15, 11, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (266, 2023, 8, 11, 14, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (267, 2023, 8, 6, 12, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (268, 2022, 8, 26, 18, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (269, 2023, 10, 28, 21, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (270, 2023, 5, 1, 17, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (271, 2023, 7, 6, 23, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (272, 2023, 2, 6, 15, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (273, 2022, 11, 2, 12, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (274, 2022, 12, 17, 9, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (275, 2022, 5, 2, 13, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (276, 2022, 3, 25, 10, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (277, 2022, 7, 19, 15, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (278, 2022, 7, 12, 10, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (279, 2023, 12, 24, 13, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (280, 2022, 11, 11, 17, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (281, 2023, 7, 4, 21, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (282, 2022, 8, 16, 12, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (283, 2022, 5, 16, 18, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (284, 2022, 1, 5, 8, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (285, 2022, 8, 25, 20, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (286, 2023, 7, 2, 16, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (287, 2022, 2, 4, 23, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (288, 2022, 11, 5, 19, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (289, 2023, 5, 27, 19, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (290, 2023, 7, 8, 20, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (291, 2022, 11, 28, 17, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (292, 2022, 5, 11, 18, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (293, 2023, 10, 22, 15, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (294, 2022, 3, 6, 20, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (295, 2023, 1, 4, 18, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (296, 2023, 3, 18, 23, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (297, 2022, 5, 2, 17, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (298, 2023, 12, 20, 13, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (299, 2023, 3, 5, 18, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (300, 2022, 8, 10, 16, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (301, 2022, 5, 15, 19, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (302, 2023, 7, 8, 18, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (303, 2022, 9, 25, 21, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (304, 2023, 8, 15, 14, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (305, 2023, 3, 8, 17, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (306, 2022, 3, 24, 12, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (307, 2022, 7, 26, 10, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (308, 2023, 10, 24, 10, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (309, 2023, 8, 24, 14, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (310, 2022, 10, 23, 20, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (311, 2023, 8, 7, 10, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (312, 2022, 2, 8, 17, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (313, 2023, 8, 1, 19, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (314, 2023, 12, 27, 16, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (315, 2023, 1, 7, 14, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (316, 2023, 12, 19, 12, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (317, 2022, 10, 4, 15, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (318, 2022, 5, 10, 17, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (319, 2023, 6, 22, 14, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (320, 2022, 2, 8, 13, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (321, 2023, 12, 22, 23, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (322, 2022, 2, 19, 12, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (323, 2022, 9, 27, 23, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (324, 2023, 8, 14, 9, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (325, 2022, 5, 4, 11, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (326, 2023, 1, 19, 17, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (327, 2023, 8, 11, 11, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (328, 2022, 9, 15, 21, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (329, 2022, 10, 20, 21, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (330, 2022, 5, 23, 17, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (331, 2022, 11, 12, 23, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (332, 2022, 11, 27, 17, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (333, 2023, 7, 16, 14, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (334, 2022, 12, 11, 8, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (335, 2022, 3, 16, 11, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (336, 2022, 10, 9, 23, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (337, 2023, 12, 22, 23, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (338, 2023, 4, 17, 11, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (339, 2022, 12, 22, 17, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (340, 2023, 10, 5, 11, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (341, 2022, 11, 18, 11, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (342, 2023, 11, 14, 17, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (343, 2023, 6, 13, 17, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (344, 2023, 5, 22, 10, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (345, 2023, 3, 12, 22, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (346, 2022, 10, 16, 13, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (347, 2022, 6, 11, 14, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (348, 2022, 8, 14, 10, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (349, 2022, 12, 27, 19, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (350, 2023, 8, 5, 18, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (351, 2023, 6, 27, 8, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (352, 2023, 8, 17, 10, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (353, 2023, 9, 9, 17, 13);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (354, 2023, 5, 13, 10, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (355, 2023, 7, 2, 10, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (356, 2023, 9, 21, 9, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (357, 2023, 4, 15, 22, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (358, 2023, 5, 24, 11, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (359, 2023, 7, 28, 16, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (360, 2023, 5, 11, 14, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (361, 2022, 10, 11, 23, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (362, 2022, 8, 24, 9, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (363, 2023, 6, 14, 16, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (364, 2023, 8, 15, 15, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (365, 2023, 8, 14, 16, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (366, 2023, 3, 22, 8, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (367, 2023, 10, 14, 13, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (368, 2022, 12, 2, 19, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (369, 2023, 5, 28, 19, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (370, 2022, 2, 19, 18, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (371, 2022, 5, 15, 18, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (372, 2023, 11, 22, 19, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (373, 2022, 9, 15, 11, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (374, 2022, 8, 19, 8, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (375, 2023, 1, 26, 8, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (376, 2022, 7, 13, 21, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (377, 2022, 7, 14, 9, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (378, 2023, 5, 6, 11, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (379, 2023, 12, 10, 21, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (380, 2022, 5, 10, 18, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (381, 2023, 6, 26, 15, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (382, 2022, 2, 27, 22, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (383, 2023, 1, 9, 13, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (384, 2023, 12, 18, 12, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (385, 2023, 8, 6, 20, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (386, 2023, 6, 11, 20, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (387, 2022, 10, 23, 13, 13);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (388, 2022, 11, 24, 18, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (389, 2023, 11, 27, 9, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (390, 2023, 6, 7, 16, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (391, 2023, 10, 10, 23, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (392, 2022, 9, 13, 16, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (393, 2023, 12, 9, 21, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (394, 2022, 9, 13, 12, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (395, 2023, 8, 18, 13, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (396, 2022, 9, 18, 21, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (397, 2022, 4, 28, 15, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (398, 2023, 3, 3, 19, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (399, 2022, 3, 3, 9, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (400, 2022, 9, 22, 12, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (401, 2023, 8, 13, 10, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (402, 2023, 9, 14, 10, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (403, 2023, 5, 8, 17, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (404, 2023, 10, 3, 15, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (405, 2022, 4, 28, 8, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (406, 2023, 7, 24, 13, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (407, 2022, 2, 3, 18, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (408, 2022, 8, 15, 12, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (409, 2022, 6, 10, 15, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (410, 2023, 9, 10, 13, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (411, 2023, 4, 14, 21, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (412, 2022, 6, 24, 23, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (413, 2023, 5, 6, 9, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (414, 2023, 4, 9, 8, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (415, 2022, 4, 2, 20, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (416, 2022, 10, 12, 15, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (417, 2023, 2, 23, 12, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (418, 2022, 11, 18, 18, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (419, 2022, 5, 12, 12, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (420, 2023, 4, 7, 8, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (421, 2022, 9, 3, 15, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (422, 2023, 2, 3, 14, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (423, 2022, 11, 4, 18, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (424, 2022, 6, 4, 11, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (425, 2022, 9, 21, 13, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (426, 2023, 9, 20, 9, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (427, 2022, 1, 12, 22, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (428, 2023, 8, 28, 18, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (429, 2023, 6, 27, 8, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (430, 2023, 3, 6, 10, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (431, 2022, 10, 12, 19, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (432, 2022, 4, 26, 10, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (433, 2022, 11, 28, 21, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (434, 2022, 9, 18, 20, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (435, 2023, 3, 9, 21, 13);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (436, 2022, 10, 16, 9, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (437, 2023, 5, 1, 22, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (438, 2023, 3, 3, 13, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (439, 2023, 11, 28, 19, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (440, 2023, 4, 6, 20, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (441, 2023, 12, 6, 12, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (442, 2022, 10, 18, 15, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (443, 2023, 8, 8, 17, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (444, 2023, 10, 15, 11, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (445, 2022, 12, 20, 9, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (446, 2022, 2, 5, 9, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (447, 2022, 8, 23, 10, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (448, 2022, 4, 8, 21, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (449, 2023, 8, 16, 8, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (450, 2022, 10, 12, 11, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (451, 2022, 3, 25, 11, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (452, 2023, 12, 10, 19, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (453, 2023, 8, 9, 17, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (454, 2022, 9, 1, 19, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (455, 2023, 6, 2, 21, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (456, 2022, 8, 4, 9, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (457, 2023, 3, 1, 22, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (458, 2023, 10, 13, 22, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (459, 2022, 9, 25, 8, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (460, 2022, 6, 20, 22, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (461, 2023, 5, 20, 11, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (462, 2023, 10, 10, 14, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (463, 2022, 3, 27, 18, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (464, 2022, 7, 1, 21, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (465, 2022, 6, 5, 15, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (466, 2023, 8, 28, 11, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (467, 2023, 6, 19, 23, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (468, 2022, 3, 14, 17, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (469, 2023, 6, 13, 10, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (470, 2023, 9, 18, 18, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (471, 2023, 4, 1, 21, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (472, 2023, 2, 3, 11, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (473, 2023, 10, 11, 20, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (474, 2022, 10, 8, 14, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (475, 2023, 2, 3, 13, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (476, 2023, 8, 15, 17, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (477, 2022, 10, 8, 17, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (478, 2023, 1, 26, 15, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (479, 2022, 10, 25, 14, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (480, 2023, 2, 8, 16, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (481, 2022, 12, 9, 12, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (482, 2022, 12, 7, 10, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (483, 2023, 8, 12, 9, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (484, 2022, 2, 5, 14, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (485, 2023, 5, 3, 20, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (486, 2022, 2, 13, 10, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (487, 2022, 3, 5, 12, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (488, 2022, 4, 2, 14, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (489, 2023, 4, 20, 10, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (490, 2022, 7, 3, 17, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (491, 2022, 6, 19, 20, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (492, 2023, 1, 4, 19, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (493, 2022, 9, 11, 21, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (494, 2022, 5, 25, 14, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (495, 2023, 3, 23, 23, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (496, 2022, 5, 16, 16, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (497, 2023, 12, 27, 17, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (498, 2022, 8, 21, 13, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (499, 2023, 6, 2, 13, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (500, 2022, 5, 11, 19, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (501, 2022, 7, 27, 13, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (502, 2022, 6, 1, 16, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (503, 2023, 12, 26, 21, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (504, 2022, 2, 15, 11, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (505, 2023, 11, 20, 21, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (506, 2023, 9, 14, 19, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (507, 2023, 3, 19, 8, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (508, 2023, 1, 26, 23, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (509, 2023, 10, 20, 19, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (510, 2023, 2, 20, 19, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (511, 2023, 5, 10, 18, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (512, 2022, 1, 23, 19, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (513, 2023, 8, 6, 14, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (514, 2023, 1, 19, 13, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (515, 2023, 7, 20, 8, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (516, 2023, 6, 17, 20, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (517, 2023, 5, 9, 17, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (518, 2022, 7, 19, 9, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (519, 2023, 12, 24, 16, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (520, 2023, 7, 23, 8, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (521, 2023, 4, 13, 16, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (522, 2022, 8, 26, 21, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (523, 2022, 11, 7, 14, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (524, 2022, 12, 2, 12, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (525, 2023, 11, 20, 22, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (526, 2022, 6, 19, 11, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (527, 2022, 8, 28, 13, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (528, 2023, 3, 9, 11, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (529, 2023, 7, 15, 11, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (530, 2023, 2, 24, 21, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (531, 2022, 10, 13, 22, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (532, 2023, 9, 2, 21, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (533, 2023, 8, 7, 22, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (534, 2022, 9, 25, 17, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (535, 2023, 8, 19, 23, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (536, 2023, 5, 5, 8, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (537, 2022, 9, 12, 8, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (538, 2023, 5, 26, 16, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (539, 2023, 8, 17, 14, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (540, 2022, 8, 17, 10, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (541, 2023, 5, 23, 8, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (542, 2023, 3, 23, 20, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (543, 2022, 12, 9, 23, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (544, 2022, 11, 1, 20, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (545, 2023, 2, 10, 9, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (546, 2023, 11, 20, 23, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (547, 2023, 9, 28, 15, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (548, 2022, 6, 15, 17, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (549, 2022, 5, 22, 9, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (550, 2022, 1, 23, 21, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (551, 2023, 11, 8, 10, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (552, 2022, 3, 18, 9, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (553, 2023, 3, 8, 18, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (554, 2022, 10, 16, 10, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (555, 2023, 9, 4, 10, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (556, 2023, 9, 7, 16, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (557, 2023, 11, 14, 20, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (558, 2023, 10, 19, 15, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (559, 2022, 5, 27, 21, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (560, 2022, 3, 15, 22, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (561, 2022, 2, 19, 14, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (562, 2022, 12, 28, 21, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (563, 2023, 2, 22, 14, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (564, 2023, 2, 1, 21, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (565, 2022, 1, 13, 9, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (566, 2023, 5, 12, 8, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (567, 2022, 6, 24, 12, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (568, 2023, 1, 4, 11, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (569, 2022, 11, 3, 14, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (570, 2022, 2, 12, 10, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (571, 2022, 2, 27, 20, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (572, 2023, 2, 3, 17, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (573, 2022, 5, 1, 16, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (574, 2023, 4, 7, 14, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (575, 2022, 8, 9, 20, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (576, 2022, 8, 2, 19, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (577, 2023, 11, 17, 15, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (578, 2022, 4, 25, 18, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (579, 2022, 9, 21, 19, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (580, 2023, 6, 5, 11, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (581, 2023, 3, 15, 16, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (582, 2022, 12, 21, 13, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (583, 2022, 10, 15, 15, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (584, 2023, 8, 13, 23, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (585, 2022, 10, 25, 18, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (586, 2022, 3, 11, 16, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (587, 2022, 6, 12, 16, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (588, 2022, 11, 25, 18, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (589, 2022, 9, 7, 10, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (590, 2023, 9, 5, 14, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (591, 2023, 12, 1, 23, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (592, 2023, 4, 11, 12, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (593, 2023, 10, 3, 8, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (594, 2023, 9, 8, 10, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (595, 2023, 9, 22, 20, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (596, 2022, 2, 14, 8, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (597, 2022, 9, 12, 16, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (598, 2022, 6, 6, 11, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (599, 2022, 2, 12, 18, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (600, 2022, 1, 13, 15, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (601, 2022, 2, 3, 21, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (602, 2022, 4, 23, 13, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (603, 2022, 7, 25, 8, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (604, 2023, 6, 22, 20, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (605, 2023, 2, 19, 15, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (606, 2023, 7, 2, 22, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (607, 2023, 5, 19, 8, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (608, 2022, 3, 2, 8, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (609, 2023, 7, 4, 15, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (610, 2023, 11, 20, 20, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (611, 2023, 10, 2, 23, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (612, 2023, 1, 6, 12, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (613, 2022, 5, 4, 9, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (614, 2023, 6, 6, 20, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (615, 2022, 7, 1, 17, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (616, 2022, 12, 3, 20, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (617, 2023, 7, 7, 11, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (618, 2023, 9, 3, 13, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (619, 2022, 9, 26, 15, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (620, 2022, 12, 10, 18, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (621, 2022, 11, 20, 16, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (622, 2022, 7, 23, 14, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (623, 2023, 5, 3, 10, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (624, 2022, 7, 3, 15, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (625, 2022, 5, 16, 20, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (626, 2023, 1, 21, 20, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (627, 2022, 6, 9, 20, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (628, 2022, 2, 12, 13, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (629, 2023, 12, 13, 21, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (630, 2022, 1, 6, 12, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (631, 2022, 3, 8, 23, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (632, 2023, 2, 26, 18, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (633, 2023, 3, 6, 13, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (634, 2022, 7, 17, 14, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (635, 2023, 1, 25, 22, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (636, 2022, 12, 26, 19, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (637, 2023, 11, 13, 16, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (638, 2022, 5, 24, 13, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (639, 2022, 6, 4, 23, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (640, 2022, 10, 13, 21, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (641, 2023, 3, 16, 18, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (642, 2023, 8, 11, 15, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (643, 2023, 11, 28, 16, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (644, 2022, 7, 16, 21, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (645, 2022, 12, 20, 9, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (646, 2023, 1, 17, 9, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (647, 2023, 2, 2, 8, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (648, 2022, 9, 19, 19, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (649, 2023, 12, 15, 22, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (650, 2022, 11, 1, 16, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (651, 2022, 8, 24, 9, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (652, 2022, 1, 13, 12, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (653, 2023, 4, 22, 14, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (654, 2022, 10, 23, 17, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (655, 2022, 11, 17, 9, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (656, 2023, 4, 1, 8, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (657, 2022, 3, 15, 18, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (658, 2023, 7, 14, 13, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (659, 2023, 12, 15, 16, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (660, 2022, 3, 3, 11, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (661, 2022, 6, 7, 17, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (662, 2023, 9, 5, 17, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (663, 2022, 6, 11, 13, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (664, 2023, 1, 4, 17, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (665, 2022, 2, 7, 11, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (666, 2023, 8, 3, 9, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (667, 2023, 12, 9, 11, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (668, 2022, 6, 15, 17, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (669, 2022, 6, 27, 15, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (670, 2023, 10, 21, 15, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (671, 2022, 3, 7, 15, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (672, 2023, 6, 16, 13, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (673, 2022, 1, 9, 17, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (674, 2022, 10, 16, 9, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (675, 2023, 3, 23, 19, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (676, 2023, 9, 20, 20, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (677, 2023, 10, 20, 23, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (678, 2023, 2, 6, 21, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (679, 2023, 11, 26, 17, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (680, 2022, 5, 12, 17, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (681, 2022, 3, 6, 21, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (682, 2023, 6, 6, 23, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (683, 2023, 6, 17, 8, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (684, 2022, 10, 2, 19, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (685, 2023, 9, 17, 13, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (686, 2022, 6, 26, 11, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (687, 2023, 10, 18, 22, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (688, 2022, 9, 17, 15, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (689, 2023, 10, 25, 17, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (690, 2022, 12, 24, 11, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (691, 2023, 12, 27, 23, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (692, 2022, 6, 19, 20, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (693, 2023, 4, 22, 14, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (694, 2023, 4, 6, 14, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (695, 2023, 9, 26, 13, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (696, 2022, 2, 17, 13, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (697, 2023, 4, 26, 19, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (698, 2023, 7, 9, 20, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (699, 2023, 1, 24, 22, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (700, 2023, 5, 26, 21, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (701, 2022, 10, 5, 9, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (702, 2022, 5, 12, 18, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (703, 2023, 10, 18, 22, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (704, 2023, 9, 7, 21, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (705, 2023, 8, 7, 23, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (706, 2023, 3, 9, 11, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (707, 2023, 4, 23, 16, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (708, 2023, 6, 2, 12, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (709, 2022, 6, 24, 22, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (710, 2023, 1, 9, 13, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (711, 2023, 8, 28, 22, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (712, 2023, 10, 3, 15, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (713, 2023, 3, 3, 19, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (714, 2023, 2, 3, 13, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (715, 2023, 9, 21, 16, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (716, 2022, 4, 9, 12, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (717, 2023, 9, 27, 15, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (718, 2023, 9, 24, 20, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (719, 2023, 4, 23, 10, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (720, 2022, 11, 28, 11, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (721, 2023, 7, 7, 20, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (722, 2023, 3, 23, 10, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (723, 2022, 6, 15, 18, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (724, 2022, 12, 7, 12, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (725, 2022, 8, 25, 14, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (726, 2023, 8, 14, 10, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (727, 2023, 4, 7, 23, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (728, 2022, 6, 9, 9, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (729, 2022, 12, 22, 23, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (730, 2023, 12, 15, 23, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (731, 2023, 8, 25, 9, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (732, 2022, 5, 26, 9, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (733, 2022, 8, 19, 8, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (734, 2022, 9, 22, 22, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (735, 2023, 12, 10, 10, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (736, 2022, 11, 22, 8, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (737, 2022, 11, 10, 14, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (738, 2023, 6, 25, 8, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (739, 2022, 4, 18, 11, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (740, 2023, 3, 1, 13, 13);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (741, 2022, 9, 7, 13, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (742, 2022, 6, 24, 8, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (743, 2023, 11, 28, 22, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (744, 2022, 4, 1, 11, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (745, 2023, 8, 23, 13, 43);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (746, 2023, 2, 8, 8, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (747, 2023, 7, 26, 13, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (748, 2023, 11, 15, 16, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (749, 2022, 4, 19, 17, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (750, 2022, 7, 23, 16, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (751, 2022, 11, 9, 16, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (752, 2022, 2, 21, 19, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (753, 2022, 10, 26, 9, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (754, 2022, 6, 7, 15, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (755, 2022, 5, 4, 14, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (756, 2022, 10, 3, 21, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (757, 2022, 9, 4, 12, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (758, 2023, 12, 13, 9, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (759, 2023, 8, 13, 10, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (760, 2022, 3, 12, 10, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (761, 2023, 3, 22, 11, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (762, 2022, 6, 8, 21, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (763, 2022, 2, 1, 21, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (764, 2023, 3, 4, 22, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (765, 2023, 9, 7, 19, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (766, 2023, 5, 26, 12, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (767, 2022, 5, 26, 9, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (768, 2022, 11, 13, 21, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (769, 2023, 5, 11, 22, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (770, 2022, 9, 8, 9, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (771, 2022, 2, 22, 20, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (772, 2022, 7, 7, 15, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (773, 2023, 3, 12, 12, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (774, 2022, 11, 20, 23, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (775, 2023, 7, 24, 11, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (776, 2022, 8, 13, 10, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (777, 2023, 11, 17, 10, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (778, 2023, 8, 11, 11, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (779, 2023, 8, 7, 23, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (780, 2023, 5, 28, 23, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (781, 2022, 9, 16, 10, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (782, 2023, 5, 27, 18, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (783, 2022, 10, 21, 22, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (784, 2022, 2, 14, 12, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (785, 2022, 11, 18, 22, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (786, 2023, 6, 7, 22, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (787, 2022, 11, 7, 10, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (788, 2023, 5, 10, 11, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (789, 2022, 3, 24, 10, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (790, 2022, 7, 25, 13, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (791, 2023, 9, 23, 21, 17);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (792, 2023, 9, 13, 13, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (793, 2022, 10, 6, 11, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (794, 2022, 12, 14, 16, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (795, 2022, 2, 7, 18, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (796, 2022, 6, 4, 15, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (797, 2022, 5, 18, 22, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (798, 2022, 1, 13, 16, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (799, 2022, 1, 23, 11, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (800, 2023, 9, 18, 14, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (801, 2022, 11, 17, 10, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (802, 2023, 12, 5, 11, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (803, 2022, 2, 2, 17, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (804, 2022, 11, 14, 14, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (805, 2023, 8, 4, 11, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (806, 2023, 12, 12, 18, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (807, 2023, 7, 3, 12, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (808, 2023, 8, 9, 17, 5);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (809, 2023, 10, 13, 10, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (810, 2023, 10, 18, 20, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (811, 2022, 6, 5, 13, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (812, 2022, 4, 4, 11, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (813, 2022, 4, 14, 16, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (814, 2022, 11, 5, 18, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (815, 2023, 9, 15, 9, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (816, 2023, 3, 7, 17, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (817, 2023, 11, 6, 12, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (818, 2022, 3, 3, 22, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (819, 2022, 5, 1, 9, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (820, 2023, 10, 5, 12, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (821, 2023, 8, 8, 14, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (822, 2023, 11, 7, 22, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (823, 2022, 2, 15, 19, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (824, 2023, 7, 7, 23, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (825, 2022, 9, 16, 11, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (826, 2023, 5, 22, 18, 14);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (827, 2023, 8, 28, 16, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (828, 2022, 12, 21, 16, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (829, 2022, 5, 1, 16, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (830, 2023, 12, 14, 21, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (831, 2023, 8, 11, 15, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (832, 2022, 2, 18, 18, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (833, 2023, 3, 7, 12, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (834, 2022, 1, 9, 21, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (835, 2023, 3, 22, 22, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (836, 2022, 5, 12, 23, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (837, 2022, 6, 16, 22, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (838, 2022, 2, 13, 9, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (839, 2023, 11, 16, 9, 51);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (840, 2022, 8, 28, 11, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (841, 2023, 8, 22, 20, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (842, 2022, 1, 20, 21, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (843, 2023, 2, 13, 15, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (844, 2022, 11, 16, 21, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (845, 2022, 11, 21, 17, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (846, 2022, 3, 5, 12, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (847, 2022, 4, 15, 9, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (848, 2023, 11, 20, 21, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (849, 2022, 2, 19, 23, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (850, 2023, 7, 22, 14, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (851, 2022, 10, 24, 20, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (852, 2022, 5, 11, 12, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (853, 2023, 2, 10, 21, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (854, 2022, 11, 25, 9, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (855, 2023, 7, 25, 21, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (856, 2022, 11, 8, 20, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (857, 2023, 11, 26, 14, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (858, 2022, 11, 4, 11, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (859, 2023, 10, 16, 8, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (860, 2023, 8, 27, 19, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (861, 2023, 2, 19, 11, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (862, 2022, 6, 21, 13, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (863, 2023, 8, 17, 22, 38);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (864, 2022, 10, 24, 11, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (865, 2022, 5, 2, 20, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (866, 2023, 8, 21, 20, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (867, 2023, 8, 21, 16, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (868, 2023, 9, 19, 14, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (869, 2023, 5, 2, 9, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (870, 2023, 9, 1, 8, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (871, 2022, 9, 10, 16, 20);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (872, 2023, 8, 3, 16, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (873, 2022, 6, 15, 22, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (874, 2022, 4, 2, 23, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (875, 2022, 1, 23, 16, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (876, 2023, 4, 19, 13, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (877, 2022, 11, 25, 9, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (878, 2022, 5, 1, 11, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (879, 2023, 12, 8, 9, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (880, 2022, 8, 6, 23, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (881, 2023, 5, 14, 23, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (882, 2022, 12, 28, 12, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (883, 2022, 11, 9, 10, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (884, 2022, 12, 13, 14, 24);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (885, 2023, 7, 25, 21, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (886, 2022, 1, 25, 17, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (887, 2022, 8, 1, 23, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (888, 2022, 2, 19, 16, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (889, 2023, 11, 16, 19, 44);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (890, 2022, 7, 19, 9, 60);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (891, 2023, 10, 3, 13, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (892, 2022, 7, 21, 23, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (893, 2022, 1, 13, 23, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (894, 2022, 7, 22, 19, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (895, 2023, 6, 6, 21, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (896, 2023, 11, 13, 14, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (897, 2022, 3, 18, 13, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (898, 2022, 11, 2, 18, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (899, 2022, 8, 22, 21, 58);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (900, 2022, 4, 14, 8, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (901, 2023, 7, 6, 16, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (902, 2022, 1, 12, 11, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (903, 2022, 11, 6, 10, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (904, 2023, 12, 2, 11, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (905, 2023, 2, 3, 8, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (906, 2022, 8, 14, 11, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (907, 2023, 1, 19, 15, 32);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (908, 2023, 6, 21, 20, 35);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (909, 2022, 9, 12, 17, 11);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (910, 2022, 11, 24, 19, 46);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (911, 2023, 5, 23, 13, 2);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (912, 2023, 10, 10, 14, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (913, 2022, 4, 4, 12, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (914, 2023, 9, 5, 16, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (915, 2023, 9, 6, 8, 33);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (916, 2022, 3, 6, 14, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (917, 2023, 1, 7, 14, 45);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (918, 2023, 6, 26, 12, 23);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (919, 2023, 12, 17, 23, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (920, 2022, 12, 5, 13, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (921, 2023, 9, 15, 13, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (922, 2023, 3, 17, 17, 25);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (923, 2022, 10, 4, 19, 54);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (924, 2022, 7, 9, 14, 16);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (925, 2022, 9, 23, 9, 27);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (926, 2023, 9, 26, 21, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (927, 2022, 1, 8, 20, 13);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (928, 2023, 8, 27, 13, 52);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (929, 2023, 1, 26, 16, 3);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (930, 2023, 4, 2, 18, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (931, 2022, 1, 13, 14, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (932, 2023, 6, 28, 10, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (933, 2023, 10, 13, 20, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (934, 2023, 5, 5, 9, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (935, 2023, 3, 6, 18, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (936, 2023, 12, 14, 21, 7);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (937, 2023, 6, 22, 23, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (938, 2023, 11, 8, 18, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (939, 2022, 10, 21, 9, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (940, 2022, 4, 20, 20, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (941, 2023, 2, 14, 9, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (942, 2022, 10, 5, 9, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (943, 2023, 3, 18, 15, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (944, 2022, 3, 6, 11, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (945, 2023, 6, 6, 9, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (946, 2023, 3, 24, 22, 9);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (947, 2023, 12, 6, 17, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (948, 2023, 8, 5, 20, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (949, 2022, 8, 27, 11, 1);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (950, 2023, 12, 2, 18, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (951, 2023, 9, 28, 18, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (952, 2023, 7, 3, 10, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (953, 2022, 7, 2, 20, 21);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (954, 2022, 3, 9, 21, 22);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (955, 2022, 6, 15, 19, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (956, 2023, 7, 9, 18, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (957, 2022, 11, 22, 12, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (958, 2022, 7, 15, 22, 57);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (959, 2023, 2, 23, 14, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (960, 2022, 7, 16, 16, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (961, 2023, 7, 23, 22, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (962, 2022, 7, 14, 17, 12);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (963, 2022, 7, 23, 12, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (964, 2023, 11, 4, 16, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (965, 2023, 5, 26, 20, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (966, 2022, 6, 25, 19, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (967, 2023, 12, 9, 12, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (968, 2022, 2, 2, 17, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (969, 2023, 9, 6, 12, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (970, 2022, 12, 3, 14, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (971, 2022, 7, 17, 23, 36);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (972, 2022, 11, 20, 8, 47);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (973, 2022, 5, 23, 16, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (974, 2023, 9, 7, 17, 53);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (975, 2022, 8, 28, 10, 56);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (976, 2022, 11, 9, 14, 28);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (977, 2022, 4, 18, 23, 6);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (978, 2023, 12, 25, 17, 10);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (979, 2023, 7, 22, 9, 26);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (980, 2022, 3, 17, 19, 55);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (981, 2023, 8, 16, 18, 49);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (982, 2023, 11, 19, 16, 50);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (983, 2022, 3, 8, 18, 41);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (984, 2022, 5, 26, 11, 19);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (985, 2023, 6, 5, 19, 4);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (986, 2023, 5, 8, 20, 8);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (987, 2022, 5, 11, 19, 30);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (988, 2023, 12, 8, 19, 59);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (989, 2023, 3, 21, 19, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (990, 2022, 7, 13, 16, 42);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (991, 2022, 9, 18, 21, 18);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (992, 2023, 2, 5, 13, 39);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (993, 2023, 7, 8, 15, 15);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (994, 2023, 9, 23, 15, 37);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (995, 2023, 9, 26, 15, 34);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (996, 2023, 1, 22, 19, 29);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (997, 2022, 4, 22, 22, 48);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (998, 2023, 3, 28, 22, 31);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (999, 2022, 9, 3, 15, 40);
insert into tempo (idtempo, ano, mes, dia, hora, minuto) values (1000, 2022, 5, 2, 22, 40);


INSERT INTO venda (idvenda, quantidadevenda, precounitario, valorvenda, promocao_id_promocao, produto_idproduto, cliente_idcliente, tempo_idtempo)
VALUES
(1, 5, 7.99, 39.95, NULL, 14, 87, 542),
(2, 8, 4.49, 35.92, 23, 15, 42, 781),
(3, 3, 13.99, 41.97, 47, 12, 59, 245),
(4, 10, 2.99, 29.90, NULL, 16, 93, 379),
(5, 2, 5.99, 11.98, 18, 19, 28, 612),
(6, 7, 4.49, 31.43, 6, 6, 70, 909),
(7, 4, 3.49, 13.96, 30, 27, 11, 564),
(8, 6, 7.99, 47.94, 42, 3, 89, 772),
(9, 9, 12.99, 116.91, 14, 1, 95, 487),
(10, 1, 5.99, 5.99, NULL, 13, 16, 135),
(11, 3, 4.99, 14.97, 1, 9, 37, 845),
(12, 8, 3.99, 31.92, NULL, 10, 58, 743),
(13, 5, 8.99, 44.95, 11, 11, 65, 921),
(14, 7, 7.49, 52.43, 9, 28, 77, 641),
(15, 2, 2.99, 5.98, 34, 17, 61, 287),
(16, 4, 3.49, 13.96, 33, 7, 36, 512),
(17, 6, 2.99, 17.94, 48, 33, 84, 840),
(18, 9, 4.99, 44.91, 50, 29, 99, 126),
(19, 3, 3.49, 10.47, NULL, 49, 53, 952),
(20, 1, 6.99, 6.99, 35, 44, 73, 122),
(21, 8, 2.49, 19.92, 26, 25, 78, 135),
(22, 5, 9.99, 49.95, 2, 39, 19, 914),
(23, 2, 4.79, 9.58, NULL, 43, 2, 763),
(24, 7, 2.99, 20.93, 16, 34, 24, 849),
(25, 4, 1.99, 7.96, 27, 29, 9, 754),
(26, 6, 4.49, 26.94, 20, 30, 47, 202),
(27, 9, 3.29, 29.61, 22, 31, 41, 586),
(28, 1, 2.99, 2.99, 10, 35, 88, 587),
(29, 3, 2.29, 6.87, 45, 36, 57, 888),
(30, 5, 6.99, 34.95, 37, 37, 46, 378),
(31, 2, 4.49, 8.98, 46, 38, 72, 832),
(32, 7, 3.49, 24.43, 5, 45, 10, 147),
(33, 4, 6.49, 25.96, NULL, 40, 83, 425),
(34, 6, 4.49, 26.94, 25, 41, 29, 512),
(35, 9, 14.99, 134.91, 42, 42, 80, 140),
(36, 3, 4.79, 14.37, 15, 46, 54, 695),
(37, 5, 1.99, 9.95, 13, 47, 67, 973),
(38, 2, 4.49, 8.98, NULL, 48, 44, 469),
(39, 7, 2.99, 20.93, 29, 50, 21, 357),
(40, 4, 8.99, 35.96, 4, 16, 51, 118),
(41, 6, 4.49, 26.94, 43, 21, 55, 420),
(42, 9, 6.49, 58.41, 7, 23, 13, 635),
(43, 3, 1.99, 5.97, 38, 24, 71, 322),
(44, 5, 3.49, 17.45, 12, 26, 6, 718),
(45, 8, 4.99, 39.92, 3, 32, 94, 513),
(46, 1, 2.99, 2.99, 36, 49, 39, 284),
(47, 4, 3.49, 13.96, 17, 50, 75, 982),
(48, 7, 8.99, 62.93, 28, 48, 91, 812),
(49, 6, 6.49, 38.94, 49, 43, 97, 676),
(50, 9, 9.99, 89.91, 32, 22, 63, 924);

INSERT INTO venda (idvenda, quantidadevenda, precounitario, valorvenda, promocao_id_promocao, produto_idproduto, cliente_idcliente, tempo_idtempo)
VALUES
(51, 5, 2.59, 12.95, 25, 51, 72, 789),
(52, 3, 8.49, 25.47, 16, 52, 43, 234),
(53, 2, 2.29, 4.58, 42, 53, 91, 512),
(54, 4, 4.49, 17.96, 8, 54, 17, 876),
(55, 1, 5.49, 5.49, NULL, 55, 63, 421),
(56, 3, 3.49, 10.47, 49, 56, 12, 753),
(57, 2, 1.89, 3.78, NULL, 57, 89, 135),
(58, 4, 7.29, 29.16, 32, 58, 76, 498),
(59, 1, 1.09, 1.09, NULL, 59, 28, 632),
(60, 3, 3.59, 10.77, 18, 60, 54, 974),
(61, 2, 10.49, 20.98, 5, 61, 32, 189),
(62, 1, 2.69, 2.69, NULL, 62, 82, 567),
(63, 4, 1.99, 7.96, 27, 63, 95, 321),
(64, 3, 1.49, 4.47, 14, 64, 19, 743),
(65, 2, 1.79, 3.58, NULL, 65, 78, 258),
(66, 1, 5.99, 5.99, NULL, 66, 14, 621),
(67, 3, 6.49, 19.47, 38, 67, 68, 890),
(68, 2, 8.29, 16.58, 23, 68, 50, 432),
(69, 4, 4.99, 19.96, 12, 69, 87, 789),
(70, 1, 4.39, 4.39, NULL, 70, 39, 543),
(71, 3, 3.29, 9.87, 41, 71, 97, 123),
(72, 2, 13.99, 27.98, 7, 72, 74, 654),
(73, 4, 4.79, 19.16, 30, 73, 11, 876),
(74, 1, 1.59, 1.59, NULL, 74, 72, 234),
(75, 3, 1.29, 3.87, 47, 75, 66, 789),
(76, 2, 4.49, 8.98, 15, 76, 83, 567),
(77, 1, 2.29, 2.29, NULL, 77, 29, 321),
(78, 4, 2.59, 10.36, 10, 78, 46, 890),
(79, 3, 5.99, 17.97, 35, 79, 5, 432),
(80, 2, 7.49, 14.98, 20, 80, 93, 765),
(81, 1, 6.79, 6.79, NULL, 81, 59, 543),
(82, 3, 2.19, 6.57, 44, 82, 37, 876),
(83, 2, 11.99, 23.98, 3, 83, 86, 234),
(84, 4, 9.99, 39.96, 26, 84, 15, 789),
(85, 1, 4.49, 4.49, NULL, 85, 73, 432),
(86, 3, 3.99, 11.97, 17, 86, 22, 567),
(87, 2, 5.49, 10.98, 48, 87, 64, 765),
(88, 4, 7.99, 31.96, 9, 88, 98, 234),
(89, 1, 4.79, 4.79, NULL, 89, 57, 543),
(90, 3, 3.29, 9.87, 39, 90, 80, 876),
(91, 2, 8.49, 16.98, 22, 91, 44, 321),
(92, 1, 2.99, 2.99, NULL, 92, 92, 765),
(93, 4, 4.99, 19.96, 11, 93, 25, 234),
(94, 3, 3.99, 11.97, 29, 94, 61, 567),
(95, 2, 3.29, 6.58, 36, 95, 3, 876),
(96, 1, 1.69, 1.69, NULL, 96, 79, 432),
(97, 3, 2.39, 7.17, 13, 97, 16, 234),
(98, 2, 2.09, 4.18, NULL, 98, 49, 765),
(99, 4, 9.99, 39.96, 21, 99, 71, 321),
(100, 1, 4.99, 4.99, NULL, 100, 38, 567);

INSERT INTO venda (idvenda, quantidadevenda, precounitario, valorvenda, promocao_id_promocao, produto_idproduto, cliente_idcliente, tempo_idtempo)
VALUES
(101, 5, 6.29, 31.45, 23, 101, 76, 512),
(102, 8, 2.49, 19.92, 10, 120, 44, 789),
(103, 12, 11.49, 137.88, 45, 135, 92, 231),
(104, 3, 9.99, 29.97, NULL, 107, 31, 456),
(105, 6, 3.99, 23.94, 17, 142, 68, 823),
(106, 10, 2.29, 22.90, 29, 109, 10, 675),
(107, 7, 5.99, 41.93, 3, 128, 57, 341),
(108, 4, 7.49, 29.96, 14, 110, 84, 892),
(109, 9, 4.49, 40.41, NULL, 137, 19, 487),
(110, 2, 8.99, 17.98, 25, 113, 97, 123),
(111, 5, 3.49, 17.45, 36, 127, 53, 789),
(112, 8, 4.99, 39.92, NULL, 105, 22, 456),
(113, 12, 2.79, 33.48, 7, 114, 73, 231),
(114, 3, 4.99, 14.97, 48, 106, 90, 512),
(115, 6, 3.99, 23.94, 21, 119, 17, 823),
(116, 10, 2.29, 22.90, 39, 104, 40, 675),
(117, 7, 5.99, 41.93, 12, 108, 67, 341),
(118, 4, 7.49, 29.96, 30, 111, 93, 892),
(119, 9, 4.49, 40.41, NULL, 116, 29, 487),
(120, 2, 8.99, 17.98, 46, 115, 80, 123),
(121, 5, 3.49, 17.45, 33, 118, 48, 789),
(122, 8, 4.99, 39.92, 18, 137, 61, 456),
(123, 12, 2.79, 33.48, 5, 131, 89, 231),
(124, 3, 4.99, 14.97, 42, 133, 15, 512),
(125, 6, 3.99, 23.94, 27, 135, 72, 823),
(126, 10, 2.29, 22.90, 14, 128, 35, 675),
(127, 7, 5.99, 41.93, 49, 129, 81, 341),
(128, 4, 7.49, 29.96, 9, 130, 27, 892),
(129, 9, 4.49, 40.41, NULL, 131, 63, 487),
(130, 2, 8.99, 17.98, 41, 132, 88, 123),
(131, 5, 3.49, 17.45, 16, 133, 13, 789),
(132, 8, 4.99, 39.92, 35, 134, 56, 456),
(133, 12, 2.79, 33.48, 8, 135, 78, 231),
(134, 3, 4.99, 14.97, 24, 136, 23, 512),
(135, 6, 3.99, 23.94, 37, 137, 66, 823),
(136, 10, 2.29, 22.90, 19, 138, 99, 675),
(137, 7, 5.99, 41.93, 1, 139, 37, 341),
(138, 4, 7.49, 29.96, 44, 140, 71, 892),
(139, 9, 4.49, 40.41, NULL, 141, 14, 487),
(140, 2, 8.99, 17.98, 32, 142, 55, 123),
(141, 5, 3.49, 17.45, 15, 143, 82, 789),
(142, 8, 4.99, 39.92, 28, 144, 31, 456),
(143, 12, 2.79, 33.48, 11, 145, 62, 231),
(144, 3, 4.99, 14.97, 40, 146, 91, 512),
(145, 6, 3.99, 23.94, 22, 147, 26, 823),
(146, 10, 2.29, 22.90, 38, 148, 59, 675),
(147, 7, 5.99, 41.93, 13, 149, 85, 341),
(148, 4, 7.49, 29.96, 31, 150, 32, 892),
(149, 9, 4.49, 40.41, NULL, 121, 69, 487),
(150, 2, 8.99, 17.98, 47, 122, 20, 123);

INSERT INTO venda (idvenda, quantidadevenda, precounitario, valorvenda, promocao_id_promocao, produto_idproduto, cliente_idcliente, tempo_idtempo)
VALUES
(151, 5, 7.69, 32.45, 10, 151, 78, 502),
(152, 8, 3.79, 18.32, NULL, 155, 42, 821),
(153, 3, 9.99, 26.97, 4, 161, 95, 378),
(154, 6, 3.99, 17.94, NULL, 156, 17, 697),
(155, 2, 6.99, 9.98, 23, 172, 53, 119),
(156, 4, 12.99, 43.96, NULL, 153, 84, 590),
(157, 7, 6.29, 34.93, 16, 165, 29, 265),
(158, 1, 2.79, 1.79, NULL, 168, 62, 789),
(159, 5, 9.99, 44.95, 7, 169, 13, 456),
(160, 3, 4.59, 9.87, NULL, 165, 77, 942),
(161, 8, 8.49, 59.92, 11, 161, 10, 653),
(162, 2, 3.79, 5.58, NULL, 162, 51, 847),
(163, 4, 6.49, 19.96, 35, 163, 91, 304),
(164, 6, 4.99, 23.94, NULL, 164, 68, 723),
(165, 1, 5.29, 3.29, 45, 165, 19, 892),
(166, 7, 3.49, 10.43, NULL, 166, 87, 671),
(167, 5, 3.19, 10.95, 29, 167, 33, 512),
(168, 3, 4.79, 5.37, NULL, 168, 73, 237),
(169, 8, 9.99, 71.92, 9, 169, 26, 104),
(170, 2, 6.49, 8.98, NULL, 170, 70, 645),
(171, 5, 4.49, 12.45, 20, 171, 5, 394),
(172, 8, 8.99, 63.92, NULL, 172, 89, 876),
(173, 3, 3.29, 5.97, 46, 173, 39, 198),
(174, 6, 4.49, 20.94, NULL, 174, 81, 583),
(175, 2, 5.99, 9.98, 17, 175, 48, 742),
(176, 4, 5.99, 11.96, NULL, 176, 15, 319),
(177, 7, 2.79, 12.53, 8, 177, 57, 921),
(178, 1, 7.99, 6.99, NULL, 178, 22, 470),
(179, 5, 2.99, 4.95, 14, 179, 67, 130),
(180, 3, 4.29, 9.87, NULL, 180, 93, 709),
(181, 8, 10.99, 79.92, 31, 181, 45, 276),
(182, 2, 3.49, 4.98, NULL, 182, 80, 984),
(183, 4, 4.79, 7.16, 19, 183, 26, 529),
(184, 6, 3.29, 7.74, NULL, 184, 62, 425),
(185, 1, 2.59, 1.59, 42, 185, 13, 688),
(186, 7, 5.99, 34.93, NULL, 186, 97, 367),
(187, 5, 8.49, 27.45, 24, 187, 42, 584),
(188, 3, 9.99, 23.97, NULL, 188, 75, 238),
(189, 8, 4.99, 31.92, 10, 189, 30, 105),
(190, 2, 5.29, 8.58, NULL, 190, 74, 824),
(191, 4, 3.99, 11.96, 16, 191, 9, 512),
(192, 6, 14.99, 77.94, NULL, 192, 54, 793),
(193, 1, 5.79, 3.79, 21, 193, 88, 270),
(194, 5, 3.29, 6.45, NULL, 194, 36, 647),
(195, 3, 2.99, 2.97, 47, 195, 82, 120),
(196, 8, 5.49, 27.92, NULL, 196, 29, 689),
(197, 2, 3.99, 3.98, 18, 197, 63, 448),
(198, 4, 3.29, 9.16, NULL, 198, 92, 125),
(199, 6, 6.99, 29.94, 28, 199, 49, 786),
(200, 7, 8.49, 45.43, NULL, 200, 94, 352);