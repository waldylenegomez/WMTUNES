const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Usuarios = sequelize.define('Usuarios', {
  cpf: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  num: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  email: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  foto: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  biografia: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  link: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  pronomes: {
    type: DataTypes.STRING,
    allowNull: false,
  },

});

module.exports = Usuarios;