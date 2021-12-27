const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/categoria1', async (req, res) => {

    const preguntas = await pool.query('SELECT * FROM categoria1');
    var numero = Math.random() * (4 - 0 + 1) + 0;
    numero = parseInt(numero, 10);
    const preguntaC1 = preguntas[numero];

    const respuestas = await pool.query('SELECT * FROM respuestas');
    var respuestaCorrecta = '';
    for (var i = 0; i < respuestas.length; i++) {
        if (respuestas[i].id_pregunta == preguntaC1.id_pregunta && respuestas[i].categoria == 1) {
            respuestaCorrecta = respuestas[i].respuesta;
        }
    }

    var respuestasPregunta = {};
    for (var i = 0; i < 3; i++) {
        var k = Math.random() * (25 - 0 + 1) + 0;
        k = parseInt(k, 10);
        respuestasPregunta[i] = respuestas[k].respuesta;
    }

    var res1 = respuestasPregunta[0];
    var res2 = respuestasPregunta[1];
    var res3 = respuestasPregunta[2];
    

    res.render('preguntas/categoria1', { preguntaC1, respuestaCorrecta, res1, res2, res3 });
});

router.post('/categoria1/:respuestaCorrecta', async(req, res)=>{
    var respuesta = req.body;
    var respuestaCorrecta = req.params;
    respuesta = respuesta.grupo1;
    respuestaCorrecta = respuestaCorrecta.respuestaCorrecta;
    
    if(respuesta == respuestaCorrecta){
        res.render('preguntas/categoria2');
    }else{
        req.flash('message', 'Incorrecto, pierdes todos los puntos');
        res.redirect('/');
    }
});

router.get('/categoria2', async (req, res) => {

    console.log('Entre');
    const preguntas = await pool.query('SELECT * FROM categoria2');
    var numero = Math.random() * (4 - 0 + 1) + 0;
    numero = parseInt(numero, 10);
    const preguntaC2 = preguntas[numero];

    const respuestas = await pool.query('SELECT * FROM respuestas');
    var respuestaCorrecta = '';
    for (var i = 0; i < respuestas.length; i++) {
        if (respuestas[i].id_pregunta == preguntaC2.id_pregunta && respuestas[i].categoria == 1) {
            respuestaCorrecta = respuestas[i].respuesta;
        }
    }

    var respuestasPregunta = {};
    for (var i = 0; i < 3; i++) {
        var k = Math.random() * (25 - 0 + 1) + 0;
        k = parseInt(k, 10);
        respuestasPregunta[i] = respuestas[k].respuesta;
    }

    var res1 = respuestasPregunta[0];
    var res2 = respuestasPregunta[1];
    var res3 = respuestasPregunta[2];
    

    res.render('preguntas/categoria2', { preguntaC2, respuestaCorrecta, res1, res2, res3 });
});

router.post('/categoria2/:respuestaCorrecta', async(req, res)=>{
    var respuesta = req.body;
    var respuestaCorrecta = req.params;
    respuesta = respuesta.grupo1;
    respuestaCorrecta = respuestaCorrecta.respuestaCorrecta;
    
    if(respuesta == respuestaCorrecta){
        res.render('preguntas/categoria3');
    }else{
        req.flash('message', 'Incorrecto, pierdes todos los puntos');
        res.redirect('/');
    }
});

router.get('/categoria3', async (req, res) => {

    console.log('Entre');
    const preguntas = await pool.query('SELECT * FROM categoria3');
    var numero = Math.random() * (4 - 0 + 1) + 0;
    numero = parseInt(numero, 10);
    const preguntaC3 = preguntas[numero];

    const respuestas = await pool.query('SELECT * FROM respuestas');
    var respuestaCorrecta = '';
    for (var i = 0; i < respuestas.length; i++) {
        if (respuestas[i].id_pregunta == preguntaC3.id_pregunta && respuestas[i].categoria == 1) {
            respuestaCorrecta = respuestas[i].respuesta;
        }
    }

    var respuestasPregunta = {};
    for (var i = 0; i < 3; i++) {
        var k = Math.random() * (25 - 0 + 1) + 0;
        k = parseInt(k, 10);
        respuestasPregunta[i] = respuestas[k].respuesta;
    }

    var res1 = respuestasPregunta[0];
    var res2 = respuestasPregunta[1];
    var res3 = respuestasPregunta[2];
    

    res.render('preguntas/categoria2', { preguntaC3, respuestaCorrecta, res1, res2, res3 });
});

router.post('/categoria2/:respuestaCorrecta', async(req, res)=>{
    var respuesta = req.body;
    var respuestaCorrecta = req.params;
    respuesta = respuesta.grupo1;
    respuestaCorrecta = respuestaCorrecta.respuestaCorrecta;
    
    if(respuesta == respuestaCorrecta){
        res.render('preguntas/categoria3');
    }else{
        req.flash('message', 'Incorrecto, pierdes todos los puntos');
        res.redirect('/');
    }
});

module.exports = router;