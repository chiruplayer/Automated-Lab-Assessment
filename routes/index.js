var express = require('express');
var router = express.Router();
var fs = require('fs');

var database = require('../database.js');

// For login token
const secret = 'secret';

// Connect to RDS
var connection = database.connectToRDS();
connection.connect((err) => {
  if(err) throw err;
  console.log('Connected to DB');
});

// Connect to S3
var Aws = require('aws-sdk');
var s3 = new Aws.S3();
var bucket = 'sourcecodestore';

//compileX
var compiler = require('compilex');
var option = {stats : true};
compiler.init(option);

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/code', function(req, res, next) {
  res.render('code', { title: 'Solve' });
});

router.post('/studentDashboard' , function(req, res, next) {
	//Login details are check with DB and then only page is rendered
  const email = req.body.email2;
  const password = req.body.pwd2;
  database.login(connection, email, password, (status) => {
    if(status == 200) res.render('studentDashboard', { title: 'Solve' });
    else res.sendStatus(status);
  });
});

router.post('/teacherDashboard' , function(req, res, next) {
	//Login details are check with DB and then only page is rendered
	res.render('teacherDashboard', { title: 'Solve' });
});

router.post('/compilecode', function(req, res, next) {
  	var code = req.body.code;
    var input = req.body.input;
    var inputRadio = req.body.inputRadio;
    var lang = req.body.lang

    // Store code in bucket
    s3.putObject({
      Bucket : bucket,
      Key : "file1.cpp",
      Body : code
    }, (err, data) => {
      if(err) throw err;
      else console.log(data);
    });

    // Compile code and serve output
    if(inputRadio === "true") {
    	var envData = { OS : "linux" , cmd : "gcc"};
    	compiler.compileCPPWithInput(envData , code ,input , function (data) {
    		if(data.error) res.send(data.error);
    		else res.send(data.output);
    	});
	  }
    else {
    	var envData = { OS : "linux" , cmd : "gcc"};
      compiler.compileCPP(envData, code, function (data) {
      	if(data.error) res.send(data.error);
      	else res.send(data.output);
      });
    }
});

module.exports = router;
