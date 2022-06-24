var express = require('express');
var consign = require('consign')
var bodyParser = require('body-parser')
var expressValidator = require('express-validator')
var upload = require('express-fileupload')

var app = express();
app.set('views', './app/views')
app.set('view engine', 'ejs')

app.use(express.static('./app/public'))
app.use(express.static('./app/uploads'))
app.use(bodyParser.urlencoded({extended : true}))
app.use(expressValidator())
app.use(upload())

consign()
.include('./app/routes')
.then('./config/db_connect.js')
.then('./app/controllers')
.then('./app/models')
.into(app)

module.exports = app;