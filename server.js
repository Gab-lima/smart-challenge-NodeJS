const express = require('express');
const bodyParser = require('body-parser');

const app = express();

const port = process.env.PORT || 5000;

app.use(bodyParser.urlencoded({ extended: true }))

app.use(bodyParser.json())

app.get('/', (req, res) => {
  res.send("Pojeto Smart Staff (leia o README.md");
});

const customerRoutes = require('./src/routes/customer.routes')

app.use('/api/v1/customer', customerRoutes)

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});