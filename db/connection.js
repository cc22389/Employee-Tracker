const util = require("util");
const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "r00t",
  database: "employee_tracker"
});

connection.connect();
connection.query = util.promisify(connection.query);
module.exports = connection;

