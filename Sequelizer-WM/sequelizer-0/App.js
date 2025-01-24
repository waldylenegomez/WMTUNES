const Artista = require("./models/artista");
const Usuarios = require("./models/usuarios");
const Musica = require("./models/musica");
const Playlist = require("./models/playlist");
const Genero_musical = require("./models/genero_musical");
const Plano = require("./models/plano");
const sequelize = require('./db');
const relacionamentos = require('./models/relacionamentos')

(async () => {
    try {
      // Configurar relacionamentos
      relacionamentos();
  
      // Sincronizar o banco de dados
      await sequelize.sync({ force: true });
      console.log('Banco de dados sincronizado.');
  
      // Criar um usuário
      const artista1 = await Artista.create({
          cpf: '12131',
          bio: 'adwq', 
          num: '210-34', 
          nome: 'dkopwpd', 
          email: 'sjdfjdqwo', 
          foto: 'sfjkdqopwd'
        });

    } catch (error) {
      console.error('Erro ao sincronizar o banco de dados:', error);
    }
  })();