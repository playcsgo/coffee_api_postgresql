require('dotenv').config()

const mysql = require('mysql2')
const mysqldump = require('mysqldump')

const connection = mysql.createConnection({
  host: process.env.RDS_HOSTNAME,
  user: process.env.RDS_USERNAME,
  password: process.env.RDS_PASSWORD,
  database: process.env.RDS_NAME,
})

mysqldump({
  connection: {
    host: process.env.RDS_HOSTNAME,
    user: process.env.RDS_USERNAME,
    password: process.env.RDS_PASSWORD,
    database: process.env.RDS_NAME,
  },
  dumpToFile: './datadump_twitter2.sql'
})
  .then(() => {
    console.log('dump done.')
    process.exit(0)
  })
  .catch(err => {
    console.error(err)
    process.exit(1)
  })
