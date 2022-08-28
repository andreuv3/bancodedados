\c consultorio;

INSERT INTO medico (cpf, rg, crm, nome, sexo, endereco, bairro, cidade, uf, cep, telefone) VALUES
('12345678901', '6324761346', '59817598', 'Luiza Swift', 'F', 'Rua Sao Francisco, 123', 'Sao Cristovao', 'Chapeco', 'SC', '89814010', '67412752645'),
('09876543210', '8514851671', '81578752', 'Randall Mckenzie', 'M', 'Rua Quinze de Novembro, 231', 'Jardim Italia', 'Chapeco', 'SC', '89814010', '81782174135'),
('12378945611', '1726571264', '87148795', 'Rehan Fountain', 'M', 'Rua Tiradentes, 854', 'Efapi', 'Chapeco', 'SC', '89814010', '51827851724'),
('10293847561', '1985127651', '58147857', 'Maya Green', 'F', 'Rua Amazonas, 878', 'Santo Antonio', 'Chapeco', 'SC', '89814010', '81427917614'),
('56473829103', '6149561765', '15812853', 'Albie Hodgson', 'M', 'Rua Sao Sebastiao, 987', 'Centro', 'Xanxere', 'SC', '48279483', '74751865481'),
('13245746798', '1654756127', '85149516', 'Willard Vargas', 'M', 'Rua Bela Vista, 972', 'Centro', 'Quilombo', 'SC', '12763125', '91526776534'),
('32145698709', '8517456471', '81758471', 'Dominik Garcia', 'M', 'Rua Duque De Caxias, 568', 'Maria Goretti', 'Chapeco', 'SC', '89814010', '18791623154'),
('31264597826', '8417857151', '85174817', 'Fletcher Moran', 'M', 'Rua Minas Gerais, 901', 'Centro', 'Xanxere', 'SC', '48279483', '71236512766'),
('14235867901', '8419875984', '91746517', 'Aida Preece', 'F', 'Rua Treze de Maio, 716', 'Passo Dos Fortes', 'Chapeco', 'SC', '89814010', '87125618761'),
('64167367346', '5874198573', '51752675', 'Alistair Murphy', 'M', 'Rua Dom Pedro II, 667', 'Centro', 'Chapeco', 'SC', '89814010', '75126751267');

INSERT INTO especialidade (codigo, nome) VALUES
(1, 'Pediatria'),
(2, 'Endocrinologia'),
(3, 'Oftamologia'),
(4, 'Ginecologia'),
(5, 'Cardiologia'),
(6, 'Pneumologia'),
(7, 'Hematologia'),
(8, 'Dermatologia'),
(9, 'Urologia'),
(10, 'Neurologia');

INSERT INTO especializacao (cpf_medico, codigo_especialidade, rqe) VALUES 
(12345678901, 2, '51427612'),
(12345678901, 10, '12935617'),
(09876543210, 1, '72166532'),
(10293847561, 5, '91267721'),
(12378945611, 5, '97216477'),
(56473829103, 7, '47918743'),
(13245746798, 3, '92183912'),
(32145698709, 8, '26756713'),
(64167367346, 6, '36716715'),
(14235867901, 4, '76625346');

INSERT INTO paciente (cpf, rg, nome, sexo, endereco, bairro, cidade, uf, cep, telefone, nome_mae, nome_pai, profissao) VALUES
('45985742343', '512T571267', 'Pierre Wooten', 'M', 'Rua Sete de Setembro, 153', 'Centro', 'Chapeco', 'SC', '89814010', '15245827192', 'Alisha Dale', 'Stephen Higgins', 'Contador'), 
('81247582785', '1957365172', 'Will Mcdowell', 'M', 'Rua Rio de Janeiro, 982', 'Maria Goretti', 'Chapeco', 'SC', '89814010', '41671236532', 'Shauna Jones', 'Jarrod Whittington', 'Engenheiro Civil'), 
('95172657126', '4912376713', 'Catriona Mccormick', 'F', 'Rua Jose Bonifacio, 655', 'Jardim Italia', 'Chapeco', 'SC', '89814010', '51289367571', 'Anisah Albert', 'Patrick Spencer', 'Secretaria'), 
('85127574263', '8521751333', 'Ned James', 'M', 'Rua Santa Maria, 871', 'Centro', 'Chapeco', 'SC', '89814010', '51726712631', 'Aiesha Winter', 'Lincoln Hayden', 'Motorista de onibus'), 
('04812758123', '5814276591', 'Courtnie Wilkes', 'F', 'Rua Alagoas, 222', 'Santo Antonio', 'Chapeco', 'SC', '89814010', '71265712653', 'Caitlyn Kendall', 'Albert Bailey', 'Dentista'), 
('19376571627', '5182751827', 'Kane Brett', 'M', 'Rua Duque De Caxias, 333', 'Centro', 'Xanxere', 'SC', '48279483', '58137581235', 'Nuala Howard', NULL, 'Professor de matematica'), 
('85172895171', '9127657912', 'Margo Wilkerson', 'F', 'Rua Santa Luzia, 876', 'Santa Maria', 'Chapeco', 'SC', '89814010', '91265712635', 'Pamela Tanner', 'Tariq Espinosa', 'Programador'), 
('18246714613', '8051275817', 'Brandan Franklin', 'M', 'Rua Parana, 253', 'Efapi', 'Chapeco', 'SC', '89814010', '59172657126', 'Inez Winters', 'Eugene Weber', 'Vendedor'), 
('51972657126', '5012475981', 'Charlton Lott', 'M', 'Rua sao Jorge, 905', 'Santo Antonio', 'Chapeco', 'SC', '89814010', '95126763423', 'Eiliyah Blackmore', 'Mitchel Cowan', 'Eletricista'), 
('51367951633', '5018275872', 'Griffin Kendall', 'M', 'Rua Amazonas, 431', 'Centro', 'Xanxere', 'SC', '48279483', '52187581278', 'Gracie-Leigh Ramsey', 'Reginald Powers', 'Pizzaiolo');

INSERT INTO consulta (cpf_medico, cpf_paciente, data, hora_inicio, hora_fim, observacoes) VALUES
('12345678901', '45985742343', '2022-08-26', '08:00', '09:00', 'Paciente relatou ter dores de cabeca'),
('12345678901', '95172657126', '2022-08-26', '09:00', '10:00', 'Paciente relatou ter alergia a medicamento'),
('09876543210', '85172895171', '2022-08-31', '11:00', '12:00', NULL),
('12378945611', '51367951633', '2022-08-31', '14:00', '15:00', NULL),
('64167367346', '45985742343', '2022-09-02', '08:00', '09:00', NULL),
('12378945611', '51367951633', '2022-09-06', '10:00', '11:00', NULL),
('31264597826', '04812758123', '2022-09-10', '09:00', '10:00', NULL),
('31264597826', '19376571627', '2022-10-03', '17:00', '18:00', NULL),
('31264597826', '18246714613', '2022-10-03', '08:00', '09:00', NULL),
('14235867901', '51972657126', '2022-10-04', '11:00', '12:00', NULL),
('31264597826', '81247582785', '2022-10-04', '10:00', '11:00', NULL),
('14235867901', '85127574263', '2022-10-04', '15:00', '16:00', NULL),
('10293847561', '85172895171', '2022-10-04', '14:00', '15:00', NULL),
('12345678901', '51972657126', '2022-11-08', '08:00', '09:00', NULL),
('12345678901', '04812758123', '2022-11-09', '09:00', '10:00', NULL),
('12378945611', '04812758123', '2022-12-01', '10:00', '11:00', NULL),
('09876543210', '81247582785', '2022-12-01', '11:00', '12:00', NULL),
('09876543210', '51972657126', '2022-12-01', '14:00', '15:00', NULL);

INSERT INTO medicamento (codigo, nome) VALUES
(1, 'Dipirona'),
(2, 'Paracetamol'),
(3, 'Propanolol'),
(4, 'Cataflan'),
(5, 'Orlistate'),
(6, 'Amoxicilina'),
(7, 'Ibuprofeno'),
(8, 'Metformina'),
(9, 'Losartana'),
(10, 'Hidroclorotiazida');

INSERT INTO prescricao (cpf_medico, cpf_paciente, data_consulta, codigo_medicamento, posologia, duracao) VALUES 
('12345678901', '45985742343', '2022-08-26', 1, 4, 3),
('12345678901', '45985742343', '2022-08-26', 4, 4, 2),
('12345678901', '95172657126', '2022-08-26', 7, 6, 7),
('09876543210', '85172895171', '2022-08-31', 9, 6, 30),
('12378945611', '51367951633', '2022-08-31', 1, 6, 10),
('12378945611', '51367951633', '2022-08-31', 5, 8, 14);