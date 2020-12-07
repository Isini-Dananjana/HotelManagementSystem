var mysql = require('mysql');

		var con = mysql.createConnection({
		  host: "localhost:3306",
		  user: "root",
		  password: "12345",
		  database: "yulabeach"
		});

		con.connect(function(err) {
		  if (err) throw err;
		  console.log("Connected!");
		  var sql = "INSERT INTO kitchenstock (stock_id, item_code) VALUES ('1', '2')";
		  con.query(sql, function (err, result) {
		    if (err) throw err;
		    console.log("1 record inserted");
		  });
		});
