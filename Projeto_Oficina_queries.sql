-- Dados para a tabela cliente
USE OficinaMEcanica;
SHOW TABLES;

INSERT INTO cliente (nome, cpf, endereco)
VALUES 
('João Silva', '12345678901', 'Rua das Flores, 123'),
('Maria Oliveira', '98765432100', 'Avenida Brasil, 456'),
('Carlos Pereira', '45678912311', 'Travessa do Sol, 789');

-- Dados para a tabela mecanico
INSERT INTO mecanico (mecNome, mecEndereco, especialidade)
VALUES 
('Pedro Santos', 'Rua dos Mecânicos, 22', 'Suspensão e Freios'),
('Ana Costa', 'Alameda das Engrenagens, 78', 'Eletricidade Automotiva'),
('Roberto Souza', 'Estrada dos Consertos, 45', 'Pintura Automotiva');

-- Dados para a tabela ordem_servico
INSERT INTO ordem_servico (data_solicitacao, valor_servico, status, previsao_conclusao, cliente_id)
VALUES 
('2024-11-01', 1500.00, 'Em andamento', '2024-12-01', 1),
('2024-11-05', 750.00, 'Concluído', '2024-11-10', 2),
('2024-11-10', 1200.00, 'Pendente', '2024-12-05', 3);

-- Dados para a tabela veiculo
INSERT INTO veiculo (modelo_carro, placa, tipo_combustivel, cliente_id)
VALUES 
('Ford Fiesta', 'ABC1234', 'Gasolina', 1),
('Chevrolet Onix', 'DEF5678', 'Flex', 2),
('Toyota Corolla', 'GHI9012', 'Etanol', 3);

-- Dados para a tabela tabela_referencia
INSERT INTO tabela_referencia (mao_de_obra)
VALUES 
('Troca de óleo'),
('Revisão completa'),
('Pintura geral');

-- Dados para a tabela servico_revisao_periodica
INSERT INTO servico_revisao_periodica (troca_oleo, filtros_oleo, combustivel, ar_cabine)
VALUES 
('Sim', 'Sim', 'Sim', 'Sim'),
('Sim', 'Não', 'Não', 'Sim'),
('Não', 'Não', 'Não', 'Não');

-- Dados para a tabela servico_manutencao
INSERT INTO servico_manutencao (alinhamento_balanceamento, reparos_simples, troca_pecas, funilaria, pintura)
VALUES 
('Sim', 'Sim', 'Sim', 'Não', 'Não'),
('Sim', 'Não', 'Não', 'Sim', 'Sim'),
('Não', 'Sim', 'Não', 'Não', 'Não');

-- Dados para a tabela pecas
INSERT INTO pecas (tipo, valor)
VALUES 
('Filtro de ar', 50.00),
('Óleo sintético', 100.00),
('Velas de ignição', 120.00);

-- Dados para a tabela ordem_servico_pecas
INSERT INTO ordem_servico_pecas (ordem_servico_id, peca_id)
VALUES 
(1, 1),
(1, 2),
(2, 3);
