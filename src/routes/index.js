const express = require('express');
const router = express.Router();

router.get('/', (req, res)=>{
    res.redirect('/preguntas/categoria1')
});

module.exports = router;