/* jshint esversion :6 */

try{
  var express = require('express')
  var bodyParser = require('body-parser');
  require('dotenv').config();
  var cors = require('cors');
}catch(error){
  console.error("ERROR are all the Dependencies installed?");
  console.log(error);
  process.exit(1);
}

// config
var port = 3001;


process.on('SIGINT' , function(){
  process.exit(0);
});

console.log("Server Starting");

var app = express();
app.use(cors());
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());


var apiRouter = require('./Routes/api');

app.use('/api', apiRouter);

app.listen(port);

console.log("Server Started on Port" + port);
