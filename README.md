<h1 align="center">
Telos database
</h1>

## Começando

1. Clone este repositório usando `git clone https://github.com/G2-D/telos-database.git`
2. Mova-se para o diretório apropriado: `cd telos-database` <br />
3. Execute `docker-compose up -d` para a baixar a imagem e criar o container do Maria DB <br />
4. Execute `docker exec -i mariadb mysql -u docker --password=password123 < ./telosdb-script.sql` para rodar o script do banco de dados <br />
