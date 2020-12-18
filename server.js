const express = require('express');
const bodyParser = require('body-parser');

const app = express();

const port = process.env.PORT || 5000;

app.use(bodyParser.urlencoded({ extended: true }))

app.use(bodyParser.json())

app.use(function (req, res, next) {
  //Resolver problema de CORS

  //Dá permissão a todas as urls
  res.setHeader('Access-Control-Allow-Origin', '*');

  //permissão de métodos da api
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

  //permissão de headers
  res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
  res.setHeader('Access-Control-Allow-Credentials', true);
  next();
});

app.get('/', (req, res) => {
  res.send("Pojeto Smart Staff (leia o README.md");
});

const customerRoutes = require('./src/routes/customer.routes')

app.use('/api/v1/customer', customerRoutes)

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});