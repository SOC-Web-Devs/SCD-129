
const express = require('express');

var mysql = require('mysql');
var bodyParser = require('body-parser');
var cors = require('cors');
const { query } = require('express');


var app = express();
app.use(cors());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));


var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'scd_129'
});




connection.connect();
console.log("Connect");


app.post('/reg', function(req, res) {
    res.setHeader('Content-Type', 'application/json');
  //  res.send("100");
    let record = {
        name : req.body.name,
        email_id: req.body.email_id,
        username: req.body.username,
        phone_num: req.body.phone_num,
        pwd: req.body.password,
        
    };
    
    console.log(req.body.username);

    let sql = "INSERT INTO login SET ?";
    console.log("successfully inserted");
    connection.query(sql, record, (err) => {
        if (err) throw err;
        // console.log(err);
        res.end();
    });


})


//add phase 1
app.post('/insph1', function(req, res) {
  res.setHeader('Content-Type', 'application/json');
//  res.send("100");
  let record = {
    Content : req.body.Content,
  };
  


  let sql = "INSERT INTO `phase_1` SET ?";
  console.log("successfully inserted");
  connection.query(sql, record, (err) => {
      if (err) throw err;
      // console.log(err);
      res.end();
  });


})
//add phase 1

//add phase 2


app.post('/insph2', function(req, res) {
  res.setHeader('Content-Type', 'application/json');
//  res.send("100");
  let record = {
    Content : req.body.content2,
  };
  

  
  let sql = "INSERT INTO `phase_2` SET ?";
  console.log("successfully inserted");
  console.log(req.body.content2);
  connection.query(sql, record, (err) => {
      if (err) throw err;
      // console.log(err);
      res.end();
  });


})
//add phase 2

//add phase 3


app.post('/insph3', function(req, res) {
  res.setHeader('Content-Type', 'application/json');
//  res.send("100");
  let record = {
    Content : req.body.content3,
  };
  

  
  let sql = "INSERT INTO `phase_3` SET ?";
  console.log("successfully inserted");
  console.log(req.body.content3);
  connection.query(sql, record, (err) => {
      if (err) throw err;
      // console.log(err);
      res.end();
  });


})
//add phase 3




// Phase 1 data query

app.get('/getdata1',async function (req,res){
    res.setHeader('Content-Type', 'application/json');
    
      connection.query(`select * from phase_1 where 1`, function (err, result) {
      if (err) throw err;
      res.send(result);
    });
  })
  
// Phase 1 data query



// Phase 2 data query

app.get('/getdata2',async function (req,res){
  res.setHeader('Content-Type', 'application/json');
  
    connection.query(`select * from phase_2 where 1`, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
})

// Phase 2 data query


// Phase 3 data query

app.get('/getdata3',async function (req,res){
  res.setHeader('Content-Type', 'application/json');
  
    connection.query(`select * from phase_3 where 1`, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
})

// Phase 3 data query








//LOGIN apI
app.get('/login',async function (req,res){
  res.setHeader('Content-Type', 'application/json');
  var a=  req.query.email_ids
   var b = req.query.pwds;
    connection.query(`SELECT * FROM login where email_id = '${a}' and pwd = '${b}'`, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
})  




//delete data PHASE


  app.get('/deletdata/:id',async function (req,res){
    res.setHeader('Content-Type', 'application/json');
      connection.query(`DELETE FROM phase_1 WHERE  phase_1 . id = ${req.params.id}`, function (err, result) {
      if (err) throw err;
      res.send(result);
    });
  })
  
//delete data2 PHASE


app.get('/deletdata2/:id',async function (req,res){
  res.setHeader('Content-Type', 'application/json');
    connection.query(`DELETE FROM phase_2 WHERE  phase_2 . id = ${req.params.id}`, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
})


//delete data3 PHASE


app.get('/deletdata3/:id',async function (req,res){
  res.setHeader('Content-Type', 'application/json');
    connection.query(`DELETE FROM phase_3 WHERE  phase_3 . id = ${req.params.id}`, function (err, result) {
    if (err) throw err;
    res.send(result);
  });
})



//UPDATE data PHASE

app.post('/updatedata/:id',async function(req,res) {
  res.setHeader('Content-Type', 'application/json');
//  res.send("100");

  let record = {
    Content : req.body.person,
    // id : req.body.id
  };
  
  console.log(req.body.Content);
  // console.log(req.body.id);
  let sql = await `UPDATE phase_1 SET Content = "${req.body.Content}" WHERE id = ${req.params.id}`
  console.log("successfully inserted");
 
  connection.query(sql, record, (err) => {
      if (err) throw err;
      // console.log(err);
      res.end();
  });


})



//UPDATE data PHASE2

app.post('/updatedata2/:id',async function(req,res) {
  res.setHeader('Content-Type', 'application/json');
//  res.send("100");

  let record = {
    Content : req.body.person,
    // id : req.body.id
  };
  
  console.log(req.body.Content);
  // console.log(req.body.id);
  let sql = await `UPDATE phase_2 SET Content = "${req.body.Content}" WHERE id = ${req.params.id}`
  console.log("successfully inserted");
 
  connection.query(sql, record, (err) => {
      if (err) throw err;
      // console.log(err);
      res.end();
  });


})


//UPDATE data PHASE3

app.post('/updatedata3/:id',async function(req,res) {
  res.setHeader('Content-Type', 'application/json');
//  res.send("100");

  let record = {
    Content : req.body.person,
    // id : req.body.id
  };
  
  console.log(req.body.Content);
  // console.log(req.body.id);
  let sql = await `UPDATE phase_3 SET Content = "${req.body.Content}" WHERE id = ${req.params.id}`
  console.log("successfully inserted");
 
  connection.query(sql, record, (err) => {
      if (err) throw err;
      // console.log(err);
      res.end();
  });


})

// app.get('/updatedata/:id',async function (req,res){
//   res.setHeader('Content-Type', 'application/json');
//     connection.query(`UPDATE phase_1 WHERE  phase_1 . id = ${req.params.id}`, function (err, result) {
//     if (err) throw err;
//     res.send(result);
//   });
// })






var server = app.listen(8081, function() {
    var host = server.address().address;
    var port = server.address().port;
    console.log("Example app listening at http://%s:%s", host, port);
});

