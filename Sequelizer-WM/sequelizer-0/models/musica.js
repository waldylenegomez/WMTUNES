const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Musica = sequelize.define('Musica', {
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  
  letra: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  lancamento : {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  descricao : {
    type: DataTypes.STRING,
    allowNull: false,
  },

});

module.exports = Musica;