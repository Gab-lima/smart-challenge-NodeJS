"use strict";

const Customer = require("../models/customer.model");

exports.findAll = function (req, res) {
  Customer.findAll(function (err, customer) {
    console.log("controller");
    if (err) res.send(err);
    console.log("res", customer);
    res.send(customer);
  });
};


//Filtrar por maior budget "asc"
exports.findByAscBudget = function (req, res) {
    Customer.findByAscBudget(function (err, customer) {
      if (err) res.send(err);
      res.send(customer);
    });
  };

  //Filtrar por menor budget "desc"
exports.findByDescBudget = function (req, res) {
    Customer.findByDescBudget(function (err, customer) {
      if (err) res.send(err);
      res.send(customer);
    });
  };

//A-Z
exports.findByAZ = function (req, res) {
  Customer.findByAZ(function (err, customer) {
    console.log("controller");
    if (err) res.send(err);
    console.log("res", customer);
    res.send(customer);
  });
};

//Z-A
exports.findByZA = function (req, res) {
    Customer.findByZA(function (err, customer) {
      if (err) res.send(err);
      res.send(customer);
    });
  };

  //Filtrar pela data
exports.findByRegistered = function (req, res) {
    Customer.findByRegistered(req.query.start_date,req.query.end_date, function (err, customer) {
      if (err) res.send(err);
      res.send(customer);
    });
  };



