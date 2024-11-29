CREATE DATABASE IF NOT EXISTS OficinaMecanica;
USE OficinaMecanica;

-- -----------------------------------------------------
-- Table cliente
-- -----------------------------------------------------
CREATE TABLE cliente (
  id_cliente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  cpf CHAR(11) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_cliente),
  UNIQUE INDEX cpf_unique (cpf)
);

-- -----------------------------------------------------
-- Table mecanico
-- -----------------------------------------------------
CREATE TABLE mecanico (
  id_mecanico INT NOT NULL AUTO_INCREMENT,
  mecNome VARCHAR(100) NOT NULL,
  mecEndereco VARCHAR(255) NOT NULL,
  especialidade VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_mecanico)
);

-- -----------------------------------------------------
-- Table ordem_servico
-- -----------------------------------------------------
CREATE TABLE ordem_servico (
  id_ordem_servico INT NOT NULL AUTO_INCREMENT,
  data_solicitacao DATE NOT NULL,
  valor_servico DECIMAL(10,2) NOT NULL,
  status VARCHAR(50) NOT NULL,
  previsao_conclusao DATE NOT NULL,
  cliente_id INT NOT NULL,
  PRIMARY KEY (id_ordem_servico),
  INDEX fk_ordem_servico_cliente_idx (cliente_id),
  CONSTRAINT fk_ordem_servico_cliente
    FOREIGN KEY (cliente_id)
    REFERENCES cliente (id_cliente)
);

-- -----------------------------------------------------
-- Table veiculo
-- -----------------------------------------------------
CREATE TABLE veiculo (
  id_veiculo INT NOT NULL AUTO_INCREMENT,
  modelo_carro VARCHAR(100) NOT NULL,
  placa CHAR(7) NOT NULL,
  tipo_combustivel VARCHAR(50) NOT NULL,
  cliente_id INT NOT NULL,
  PRIMARY KEY (id_veiculo),
  UNIQUE INDEX placa_unique (placa),
  INDEX fk_veiculo_cliente_idx (cliente_id),
  CONSTRAINT fk_veiculo_cliente
    FOREIGN KEY (cliente_id)
    REFERENCES cliente (id_cliente)
);

-- -----------------------------------------------------
-- Table tabela_referencia
-- -----------------------------------------------------
CREATE TABLE tabela_referencia (
  id_tabela_referencia INT NOT NULL AUTO_INCREMENT,
  mao_de_obra VARCHAR(100) NULL,
  PRIMARY KEY (id_tabela_referencia)
);

-- -----------------------------------------------------
-- Table servico_revisao_periodica
-- -----------------------------------------------------
CREATE TABLE servico_revisao_periodica (
  id_revisao_periodica INT NOT NULL AUTO_INCREMENT,
  troca_oleo VARCHAR(50) NOT NULL,
  filtros_oleo VARCHAR(50) NOT NULL,
  combustivel VARCHAR(50) NOT NULL,
  ar_cabine VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_revisao_periodica)
);

-- -----------------------------------------------------
-- Table servico_manutencao
-- -----------------------------------------------------
CREATE TABLE servico_manutencao (
  id_manutencao INT NOT NULL AUTO_INCREMENT,
  alinhamento_balanceamento VARCHAR(50) NULL,
  reparos_simples VARCHAR(50) NULL,
  troca_pecas VARCHAR(50) NULL,
  funilaria VARCHAR(50) NULL,
  pintura VARCHAR(50) NULL,
  PRIMARY KEY (id_manutencao)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table pecas
-- -----------------------------------------------------
CREATE TABLE pecas (
  id_peca INT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(100) NOT NULL,
  valor DECIMAL(10,2) NULL,
  PRIMARY KEY (id_peca)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table ordem_servico_pecas
-- -----------------------------------------------------
CREATE TABLE ordem_servico_pecas (
  ordem_servico_id INT NOT NULL,
  peca_id INT NOT NULL,
  PRIMARY KEY (ordem_servico_id, peca_id),
  INDEX fk_ordem_servico_pecas_ordem_idx (ordem_servico_id),
  INDEX fk_ordem_servico_pecas_peca_idx (peca_id),
  CONSTRAINT fk_ordem_servico_pecas_ordem
    FOREIGN KEY (ordem_servico_id)
    REFERENCES ordem_servico (id_ordem_servico)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_ordem_servico_pecas_peca
    FOREIGN KEY (peca_id)
    REFERENCES pecas (id_peca)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
