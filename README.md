#  Livraria Online "Leitura Plus" - Banco de Dados

##  Descrição do Projeto

Sistema de banco de dados para gerenciamento de uma livraria online, desenvolvido em MySQL com foco em normalização e integridade referencial.

##  Estrutura do Banco

- **11 tabelas** principais
- **4 tabelas associativas** para relacionamentos N:N
- Modelo normalizado até 3FN
- Índices e constraints de integridade

##  Como Executar

**Pré-requisitos**

- MySQL Server instalado
- MySQL Workbench ou cliente MySQL

**Clone o repositório:**

```bash
git clone https://github.com/seu-usuario/livraria-leitura-mais.git
cd livraria-leitura-plus
```

**Método 1: MySQL Workbench**

1. Abra o MySQL Workbench e conecte-se ao servidor
2. Execute o script `01_database_creation.sql`
3. Execute o script `02_insert_data.sql`
4. Execute os demais scripts na ordem

**Método 2: Terminal MySQL**

```bash
# Acessar o MySQL
mysql -u root -p

# No prompt do MySQL, execute:
CREATE DATABASE livraria_leitura_plus;
USE livraria_leitura_plus;
SOURCE scripts/01_database_creation.sql
SOURCE scripts/02_insert_data.sql
SOURCE scripts/03_select_queries.sql
SOURCE scripts/04_update_delete_operations.sql
SOURCE scripts/05_complex_queries.sql
Método 3: Linha de Comando Direto
bash
mysql -u root -p livraria_leitura_plus < scripts/01_database_creation.sql
mysql -u root -p
```
