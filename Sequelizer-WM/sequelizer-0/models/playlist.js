const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Playlist = sequelize.define('Playlist', {
  cod: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },

});

module.exports = Playlist;