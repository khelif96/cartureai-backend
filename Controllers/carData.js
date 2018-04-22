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

con.connect(function(err){
  if(err){
    con.end();
    process.exit(1);
  };
})

exports.parseCarStats = (req,res) => {
  console.log(JSON.stringify(req.body));
  console.log(req.body.objects[0].vehicleAnnotation.attributes.system)
  var make,model,color;
    make = req.body.objects[0].vehicleAnnotation.attributes.system.make;
    model = req.body.objects[0].vehicleAnnotation.attributes.system.model;
    color = req.body.objects[0].vehicleAnnotation.attributes.system.color;

  var vehicleData = {};
  var deals = [];
  var carManufacturersql = 'Select * from V_carManufacturers where Manufacturer = "' + make.name + '" and model = "' + model.name + '";';
  var carSql = 'Select * from cars where model = "' + model.name + '";';
//   con.query(carSql,function(err,result){
//   if(err){
//     res.json({success:false, message: "Vehicle Not found in db", error: err});
//   }
//     console.log(result);
//       vehicleData = {result};
//       res.json({success : true, message: "Sank you",data: {make,model,color, vehicleData}});
//
//
//
// })
    con.query(carSql,function(err,result){
    if(err){
      res.json({success:false, message: "Vehicle Not found in db", error: err});
    }
    for(var row in result){
      vehicleData = result[0];
    }
    var carsForSale = 'Select * from V_carsForSale where carName = "' + model.name + '";';
    con.query(carsForSale,function(err,result){
      if(err){
        res.json({success:false, message: "No Deals Found", error: err});
      }
      for(var row in result){

        deals.push(result[row]);
      }
      var dealers = 'Select * from dealers where  dealerName = "'
      con.query(carsForSale,function(err,result){
        if(err){
          res.json({success:false, message: "No Deals Found", error: err});
        }
        for(var row in result){

          deals.push(result[row]);
        }
        console.log("Sending this shit back");
        res.json({success : true, message: "Sank you",data: {make,model,color, vehicleData,deals}});

      })

    })

    })

  }
