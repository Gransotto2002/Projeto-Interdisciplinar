var mysql = require('mysql')

var connMysql = () => {
  return mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'fasipe@2022',
    database: 'sis_chamada'
  })
}



module.exports = () => {
  return connMysql
}