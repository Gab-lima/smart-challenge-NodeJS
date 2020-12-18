'user strict';
var dbConn = require('../../config/db.config');

//customer object create
var Customer = function(customer){
    this.first_name     = customer.first_name;
    this.last_name      = customer.last_name;
    this.email          = customer.email;
    this.phone          = customer.phone;
    this.age            = customer.age;
    this.company        = customer.company;
    this.budget         = customer.budget;
    this.address        = customer.address; 
    this.about          = customer.about; 
    this.registered     = customer.registered; 
    this.latitude       = customer.latitude; 
    this.longitude      = customer.longitude; 
    this.channel        = customer.channel; 
    };


//Filtrar de MAIOR BUDGET "asc"
Customer.findByAscBudget = function (result) {
    dbConn.query("SELECT * FROM customer ORDER BY budget ASC", function (err, res) {             
        if(err) {
            result(err, null);
        }
        else{
            result(null, formatObject(res));
        }
    });   
};

//Filtrar de MENOR BUDGET "desc"
Customer.findByDescBudget = function (result) {
    dbConn.query("SELECT * FROM customer ORDER BY budget DESC", function (err, res) {             
        if(err) {
            result(err, null);
        }
        else{
            result(null, formatObject(res));
        }
    });   
};

//Filtrar de A-Z
Customer.findByAZ = function (result) {
    dbConn.query("SELECT * FROM customer ORDER BY first_name ASC ", function (err, res) {             
        if(err) {
            result(err, null);
        }
        else{
            result(null, formatObject(res));
        }
    });   
};

//Filtrar de Z-A
Customer.findByZA = function (result) {
    dbConn.query("SELECT * FROM customer ORDER BY first_name DESC ", function (err, res) {             
        if(err) {
            result(err, null);
        }
        else{
            result(null, formatObject(res));
        }
    });   
};

Customer.findByRegistered = function (start, end, result) {
    dbConn.query("select * from customer where registered between ? and ?",[start, end],  function (err, res) {             
        if(err) {
            result(err, null);
        }
        else{
            result(null, formatObject(res));
        }
    });   
};

Customer.findAll = function (result) {
    dbConn.query("Select * from customer", function (err, res) {
        if(err) {
            console.log("error: ", err);
            result(null, err);
        }
        else{
            console.log('customer : ', res);  
            result(null, formatObject(res));
        }
    });   
};


//mapa
function formatObject(data) {
    
    const newData = [];
    
    data.map(item => {
        const element = {}
        element._id = item._id;
        element.name = {
            first:  item.first_name,
            last:  item.last_name
        }
        element.email = item.email;
        element.phone = item.phone;
        element.age = item.age;
        element.company = item.company;
        element.budget = item.budget;
        element.address = item.address;
        element.about = item.about;
        element.registered = item.registered;
        element.latitude = item.latitude;
        element.longitude = item.longitude;
        element.channel = item.channel;

        newData.push(element)
    });

    return newData;
}


module.exports= Customer;