const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/categoria1', async (req, res) => {

    const preguntas = await pool.query('SELECT * FROM categoria1');
    var numero = Math.random() * (4 - 0 + 1) + 0;
    numero = parseInt(numero, 10);
    const pregunta = preguntas[numero];

    const respuestas = await pool.query('SELECT * FROM respuestas');
    var respuestaCorrecta = '';
    for (var i = 0; i < respuestas.length; i++) {
        if (respuestas[i].id_pregunta == pregunta.id_pregunta && respuestas[i].categoria == 1) {
            respuestaCorrecta = respuestas[i].respuesta;
        }
    }

    var respuestasPregunta = {};
    for (var i = 0; i < 3; i++) {
        var k = Math.random() * (25 - 0 + 1) + 0;
        k = parseInt(k, 10);
        respuestasPregunta[i] = respuestas[k].respuesta;
    }

    const res1 = respuestasPregunta[0];
    const res2 = respuestasPregunta[1];
    const res3 = respuestasPregunta[2];
    

    res.render('preguntas/categoria1', { pregunta, respuestaCorrecta, res1, res2, res3 });
});


module.exports = router;