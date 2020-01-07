const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send({ message: 'coucoulafamiliax' });
});

app.listen(3000);