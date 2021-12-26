const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/categoria1', async(req, res)=>{
    const preguntas = await pool.query('SELECT * FROM categoria1');
    console.log(preguntas[0].pregunta);
    const numero = Math.random() * (4 - 0 + 1) + 0;
    console.log(numero)
    const pregunta = preguntas[numero];
    console.log(pregunta)
    res.render('preguntas/categoria1');
});


module.exports = router;