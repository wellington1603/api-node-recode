const mysql = require('mysql')

    const connect = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'fullstrack'
    })

    module.exports = connect