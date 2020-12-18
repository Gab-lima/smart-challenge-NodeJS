const express = require('express')
const router = express.Router()
const customerController = require('../controllers/customer.controller');

// Retrieve all customer
router.get('/', customerController.findAll);

// search ASC budget
router.get('/search/budget/asc', customerController.findByAscBudget);

// search Desc budget
router.get('/search/budget/desc', customerController.findByDescBudget);

// search AZ
router.get('/search/az', customerController.findByAZ);

// search ZA
router.get('/search/za', customerController.findByZA);

// search regitered
router.get('/search/registered', customerController.findByRegistered);


module.exports = router