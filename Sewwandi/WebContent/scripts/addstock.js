/**
 * http://usejsdoc.org/
 */
	
	/*--------------------------------------------------------------------------------------------------------------------------------------------------------
	 *  node js for add shopping cart to db
	 * ------------------------------------------------------------------------------------------------------------------------------------------------------------*/		
		 
const express = require('express');
const session = require('express-session');
const app = express();

app.get('/', function (req, res) {
   res.send(req.query.cart);
})

var server = app.listen(8094, function () {
   var host = server.address().address
   var port = server.address().port
   
   console.log(req.query.cart, host, port)
})

/*
		var express = require('express');
		var app = express();
		var http = require('http');
		var url = require('url');
		var fs = require('fs');
		var mysql = require('mysql');
		
		http.createServer(function (req, res) {
		var q = url.parse(req.url, true);	
			
		var con = mysql.createConnection({
		  host: "localhost",
		  user: "root",
		  password: "12345",
		  database: "yulabeach"
		});

		con.connect(function(err) {
		  if (err) throw err;
		  console.log("Connected!");
		  var sql = "INSERT INTO kitchenstock (item_qty, item_code) VALUES ('1', '2')";
		  con.query(sql, function (err, result) {
		    if (err) throw err;
		    console.log("1 record inserted");
		  });
		});
		}).listen(8075);*/