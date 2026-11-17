TEMA: Sistema de Controle de Estacionamento do Campus

INTEGRANTES: Evellyn e Jesuina 

ÍNDICE DOS ENTREGÁVEIS: Os arquivos do projeto estão organizados no repositório da seguinte forma:
Modelo de processo -> docs/
Documento de requisitos -> docs/
Matriz de rastreabilidade -> docs/
Descrição textual dos casos de uso -> docs/
Diagrama de casos de uso -> diagramas/
Diagrama de classes -> diagramas/
Diagrama de sequência 1 -> diagramas/ 
Diagrama de sequência 2 -> diagramas/
Diagrama de implementação -> diagramas/
Decisões de arquitetura -> docs/adr/
Script do banco de dados -> banco/init.sql
Configuração do docker -> docker-compose.yml

INSTRUÇÕES PARA EXECUTAR O AMBIENTE:
Para executar o ambiente, é necessário te ro Docker Desktop instalado e em funcionamento.
Executando...
1. Clone o repositório: git clone URL_DO_REPOSITORIO
2. Entre na pasta do projeto: cd NOME_DO_REPOSITORIO
3. Inicie o ambiente Docker: docker compose up -d
4. Para verificar se o banco de dados está em execução: docker compose ps
5. Para encerrar o ambiente: docker compose down
Os dados são armazenados em um volume Docker, permitindo sua persistência mesmo após o encerramento dos containers.

