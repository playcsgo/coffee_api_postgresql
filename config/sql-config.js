require('dotenv').config()

module.exports = {
  "development": {
    "username": process.env.RDS_USERNAME,
    "password": process.env.RDS_PASSWORD,
    "database": process.env.RDS_NAME,
    "host": process.env.RDS_HOSTNAME,
    "dialect": process.env.DIALECT,
    "dialectOptions": {
      "ssl": {
        "require": true,
        "rejectUnauthorized": false
      }
    },
  },
  "production": {
    "username": process.env.RDS_USERNAME,
    "password": process.env.RDS_PASSWORD,
    "database": process.env.RDS_NAME,
    "host": process.env.RDS_HOSTNAME,
    "dialect": process.env.DIALECT,
    "dialectOptions": {
      "ssl": {
        "require": true,
        "rejectUnauthorized": false
      }
    },
  },
  "travis": {
    "username": "travis",
    "database": "forum",
    "host": "127.0.0.1",
    "dialect": "mysql",
    "logging": false
  },
  "test": {
    "username": "root",
    "password": "password",
    "database": "forum",
    "host": "127.0.0.1",
    "dialect": "mysql"
  }
}