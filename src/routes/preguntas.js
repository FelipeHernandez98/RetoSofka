const express = require('express');
const router = express.Router();

router.get('/categoria1', (req, res)=>{
    res.render('preguntas/categoria1');
});


module.exports = router;