const {Sequelize} = require('sequelize');
const sequelize = new Sequelize(
    'wmtunes', 
    'sequelize', // nome de usuario  
    'sequelize', // senha de acesso
    {
        host: 'localhost',
        dialect: 'mysql'
    }
);
module.exports = sequelize;