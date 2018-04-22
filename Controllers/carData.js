/* jshint esversion : 6*/

require('dotenv').config();
var mysql = require('mysql');

if(process.env.host == undefined || process.env.user == undefined || process.env.password == undefined){
  console.error("Could not find all the required enviromental variables");
  console.error("Did you create the .env file?");
  process.exit(1);
}else{
  var con = mysql.createConnection({
    host: process.env.host,
    user: process.env.user,
    password: process.env.password,
    database: process.env.database
  });
}
