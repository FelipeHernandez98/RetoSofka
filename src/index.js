const express = require('express');
const exphbs = require('express-handlebars');
const flash = require('connect-flash');
const session = require('express-session');
const path = require('path');
const { database } = require('../src/keys');
const MySqlStore = require('express-mysql-session');

//Inicializaciones
const app = express();

//Configuraciones
app.set('port', process.env.PORT || 4000);
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs', exphbs({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'), 'layouts'),
    partialsDir: path.join(app.get('views'), 'partials'),
    extname: '.hbs',
    helpers: require('./lib/handlebars'),
}));
app.set('view engine', '.hbs');

//Middlewares
app.use(session({
    secret: 'RetoSofka',
    resave: false,
    saveUninitialized: false,
    store: new MySqlStore(database)
}));
app.use(express.urlencoded({extended: false}));
app.use(express.json());
app.use(flash());

//Variables locales
app.use((req, res, next)=>{
    app.locals.success = req.flash('success');
    app.locals.message = req.flash('message');
    app.locals.user = req.user;
    next();
});

//Static files
app.use(express.static(path.join(__dirname, 'public')));


//Routes
app.use(require('./routes'));
app.use('/preguntas', require('./routes/preguntas'));

//Public
app.use(express.static(path.join(__dirname, 'public')));

//Starting the server
app.listen(app.get('port'), () => {

    console.log('Servidor en el puerto', app.get('port'));

});