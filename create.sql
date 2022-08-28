CREATE DATABASE consultorio;

\c consultorio;

CREATE TABLE medico (
    cpf CHAR(11) NOT NULL,
    rg CHAR(10) NOT NULL,
    crm CHAR(8) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL,
    endereco VARCHAR(75) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_medico PRIMARY KEY (cpf)
);

CREATE TABLE especialidade (
    codigo INTEGER NOT NULL,
    nome VARCHAR(255) NOT NULL,
    CONSTRAINT pk_especialidade PRIMARY KEY (codigo)
);

CREATE TABLE especializacao (
    cpf_medico CHAR(11) NOT NULL,
    codigo_especialidade INTEGER NOT NULL,
    rqe CHAR(8) NOT NULL,
    CONSTRAINT pk_especializacao PRIMARY KEY (cpf_medico, codigo_especialidade)
);

CREATE TABLE paciente (
    cpf CHAR(11) NOT NULL,
    rg CHAR(10) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL,
    endereco VARCHAR(75) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    nome_mae VARCHAR(50) NOT NULL,
    nome_pai VARCHAR(50),
    profissao VARCHAR(50) NOT NULL,
    CONSTRAINT pk_paciente PRIMARY KEY (cpf)
);

CREATE TABLE consulta (
    cpf_medico CHAR(11) NOT NULL,
    cpf_paciente CHAR(11) NOT NULL,
    data DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    observacoes TEXT,
    CONSTRAINT pk_consulta PRIMARY KEY (cpf_medico, cpf_paciente, data),
    CONSTRAINT fk_medico FOREIGN KEY (cpf_medico) REFERENCES medico(cpf),
    CONSTRAINT fk_paciente FOREIGN KEY (cpf_paciente) REFERENCES paciente(cpf)
);

CREATE TABLE medicamento (
    codigo INTEGER NOT NULL,
    nome VARCHAR(255) NOT NULL,
    CONSTRAINT pk_medicamento PRIMARY KEY (codigo)
);

CREATE TABLE prescricao (
    cpf_medico CHAR(11) NOT NULL,
    cpf_paciente CHAR(11) NOT NULL,
    data_consulta DATE NOT NULL,
    codigo_medicamento INTEGER NOT NULL,
    posologia INTEGER NOT NULL,
    duracao INTEGER NOT NULL,
    CONSTRAINT pk_prescricao PRIMARY KEY (cpf_medico, cpf_paciente, data_consulta, codigo_medicamento),
    CONSTRAINT fk_consulta FOREIGN KEY (cpf_medico, cpf_paciente, data_consulta) REFERENCES consulta(cpf_medico, cpf_paciente, data),
    CONSTRAINT fk_medicamento FOREIGN KEY (codigo_medicamento) REFERENCES medicamento(codigo)
);
