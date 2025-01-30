const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Plano = sequelize.define('Plano', {
  cod: {
    type: DataTypes.STRING,
    allowNull: false,
    primaryKey: true
  },
  tipo: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  descricao : {
    type: DataTypes.STRING,
    allowNull: false,
  },

  valor : {
    type: DataTypes.DOUBLE, 
    allowNull: false,
  },

});

module.exports = Plano;