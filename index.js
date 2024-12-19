// const express = require('express');
import express from 'express';
const app = express();

app.get('/', (req, res) => {
	res.send('Hello Express JS ....!');
});

app.get('/health', (req, res) => {
	res.status(200);
	res.send('Server is Healthy!!!...');
});
app.listen(3000, () => {
	console.log('Server started on port 3000');
});
