const mysql = require('mysql');

const conn = mysql.createPool({
  host: "localhost",
  user: "root",
  password: ""
});

// const conn = mysql.createPool({
//   host: "fdb26.awardspace.net",
//   user: "3397759_sport",
//   password: "_h-_3MD22/bJpLIK"
// });

module.exports = conn;