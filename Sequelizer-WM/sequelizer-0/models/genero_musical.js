const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Genero_musical = sequelize.define('Genero_musical', {
  cod: {
    type: DataTypes.STRING,
    allowNull: false,
    primaryKey: true
  },
  
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },

});

module.exports = Genero_musical;