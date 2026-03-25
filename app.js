const express = require('express');
const app = express();

app.get('/', (req, res) => res.json({ message: 'DevOps Project 1', version: '1.0' }));

app.get('/health', (req, res) => res.json({ status: 'healthy' }));

app.listen(3000, () => console.log('Running on port 3000'));
