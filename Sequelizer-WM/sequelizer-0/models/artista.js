const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Artista = sequelize.define('Artista', {
  cpf: {
    type: DataTypes.STRING,
    allowNull: false,
    primaryKey: true
  },
  bio: {
    type: DataTypes.TEXT,
    allowNull: false,
  },

  num: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  nome: {
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

});

module.exports = Artista;