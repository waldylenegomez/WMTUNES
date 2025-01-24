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
          cpf: '000.000.000-00',
          bio: 'Vanessa da Mata, MPB,', 
          num: '(95)002-8922', 
          nome: 'Vanessa da Mata', 
          email: 'agenciadamata@gmail.com', 
          foto: '/img'
        })
        
        const usuario1 = await Usuarios.create({
            cpf: '111.111.111-11',
            nome: 'Mariana Vanessa', 
            num: '(82)122-4567', 
            email: 'marizinha@gmail.com', 
            foto: '/img',
            biografia: 'Blessed <3',
            link: 'instagram.com',
            pronomes: 'Ela/Dela',
      });

      const musica1 = await Musica.create({
        nome: 'Boa sorte', 
        letra: 'É só isso. Não tem mais jeito. Acabou. Boa sorte',
        lancamento: '2011', 
        descricao: 'Ouça Vanessa da Mata: https://SMB.lnk.to/VanessadaMata',
  });

    const playlist1 = await Playlist.create({
    cod: '222485', 
    nome: 'Músicas para relaxar',
});

    const generomusicall = await Genero_musical.create({
    cod: '123456', 
    nome: 'MPB',
});

    const plano1 = await Plano.create({
    cod: '678912', 
    tipo: 'Mensal',
    descricao: 'Plano Premium Individual, 1 conta Premium' ,
    valor: '19.50',

});

    } catch (error) {
      console.error('Erro ao sincronizar o banco de dados:', error);
    }
  })();