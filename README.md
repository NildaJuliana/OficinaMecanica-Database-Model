# Modelo Relacional de Sistema de Oficina Mecânica - MySQL Workbench  

Este repositório contém o modelo relacional de um **Sistema de Oficina Mecânica**, desenvolvido como parte do desafio prático de modelagem de dados, referente ao **Bootcamp Suzano - Análise de Dados com Power BI**.
O modelo foi criado utilizando o **MySQL Workbench** e busca estruturar as principais entidades e relações necessárias para o gerenciamento de uma oficina.

---

## Descrição do Sistema  

O sistema foi projetado para atender às seguintes necessidades:  

1. **Gestão de Clientes e Veículos**  
   - Um cliente pode possuir múltiplos veículos cadastrados na oficina.  
   
2. **Ordem de Serviço (OS)**  
   - Cada cliente pode solicitar uma ou mais ordens de serviço (OS) para seus veículos.  
   - A OS é analisada pela equipe de mecânicos para identificar se o serviço é:  
     - Um **reparo**, ou  
     - Uma **revisão simples**.  

3. **Avaliação de Serviços e Peças**  
   - A avaliação determina as peças necessárias e o tipo de mão de obra envolvida (simples ou especializada).  

4. **Equipe de Mecânicos**  
   - Cada OS é vinculada a um ou mais mecânicos responsáveis pela avaliação e execução dos serviços.  

---

## Componentes do Modelo Relacional  

O modelo inclui as seguintes entidades principais:  

- **Cliente**:  
  Armazena informações dos clientes da oficina.  

- **Veículo**:  
  Cadastra os veículos pertencentes aos clientes.  

- **Ordem de Serviço (OS)**:  
  Registra cada solicitação de serviço para um veículo específico.  

- **Mecânico**:  
  Registra os mecânicos que avaliam e executam os serviços.  

- **Serviço**:  
  Detalha o tipo de serviço (reparo ou revisão) e a mão de obra envolvida.  

- **Peça**:  
  Lista as peças necessárias para a execução dos serviços.  

- **Avaliação**:  
  Liga a OS à avaliação feita pelos mecânicos, determinando o serviço e as peças necessárias.  

---

## Visualização do Modelo  

Abaixo está uma imagem do modelo relacional:  

![Modelo Relacional de Oficina Mecânica]([path-to-your-image.png](https://github.com/NildaJuliana/OficinaMecanica-Database-Model/blob/main/Modelo%20-%20Oficina%20Mec%C3%A2nica.png)  

