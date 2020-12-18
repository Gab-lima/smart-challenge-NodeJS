#requisitos:
- node
- MySQL

#instalação do banco
uma cópia do banco (dump), se encontra na pasta sql. 
Importe-a para o seu MySQL.


#instalação do node:
npm install

Para rodar o projeto, use o comando:
yarn start ou npm start

rotas:
get -> http://localhost:5000/api/v1/customer 
// esta rota pega todos os itens do banco

get -> http://localhost:5000/api/v1/customer/search/budget/asc
// esta rota tras todos os itens da tabela com o budget em ordem crescente

get -> http://localhost:5000/api/v1/customer/search/budget/desc
// esta rota tras todos os itens da tabela com o budget em ordem decrescente

get -> http://localhost:5000/api/v1/customer/search/az
// esta rota tras todos os itens da tabela com o nome em ordem alfabetica de A-Z

get -> http://localhost:5000/api/v1/customer/search/za
// esta rota tras todos os itens da tabela com o nome em ordem alfabetica de Z-A

get -> http://localhost:5000/api/v1/customer/search/registered?start_date=2014-12-30&end_date=2019-12-12
// esta rota tras todos os itens da tabela com a data inicio e fim determinada pelo usuário
Por meio dos parâmetros start_date end_date


#Algumas fonts que estudei para criar o projeto:

https://woliveiras.com.br/posts/construindo-uma-api-com-node-js-parte-1-criando-e-listando-dados/

https://www.guj.com.br/t/ordenar-em-ordem-alfabetica-dados-da-minha-tabela/34664

https://spigandoeaprendendo.wordpress.com/2014/03/14/jquery-os-metodos-remove-e-empty/#:~:text=O primeiro link irá chamar,inteira%2C incluindo qualquer elemento filho.

https://stackoverflow.com/questions/11179406/jquery-get-value-of-select-onchange

Youtube: https://www.youtube.com/watch?v=BkJUFRrBrhY - aula 1 até a 7