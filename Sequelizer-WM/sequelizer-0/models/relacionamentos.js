const Artista = require("./artista");
const Usuarios = require("./usuarios");


    Artista.belongsToMany(Usuarios, { through: "ArtistaUsuario" });
Usuarios.belongsToMany(Artista, { through: "ArtistaUsuario" });

const Artista = require("./artista");
const Usuarios = require("./usuarios");
const Musica = require("./musica");
const Playlist = require("./playlist");
const Genero_musical = require("./genero_musical");


    Musica.belongsToMany(Playlist, { through: "MusicaPlaylist" });
Playlist.belongsToMany(Musica, { through: "MusicaPlaylist" });

    Genero_musical.belongsToMany(Artista, { through: "GeneroArtista" });
Artista.belongsToMany(Genero_musical, { through: "GeneroArtista" });

    Musica.belongsToMany(Genero_musical, { through: "MusicaGenero" });
Genero_musical.belongsToMany(Musica, { through: "MusicaGenero" });

    Musica.belongsToMany(Artista, { through: "MusicaArtista" });
Artista.belongsToMany(Musica, { through: "MusicaArtista" });

    Usuarios.belongsToMany(Musica, { through: "UsuarioMusica" });
Musica.belongsToMany(Usuarios, { through: "MusicaGenero" });

    Usuarios.belongsToMany(Genero_musical, { through: "UsuariosGeneroFav" });
Genero_musical.belongsToMany(Usuarios, { through: "UsuariosGeneroFav" });

    Usuarios.belongsToMany(Artista, { through: "UsuariosArtistaFav" });
Artista.belongsToMany(Usuarios, { through: "UsuariosArtistaFav" });




