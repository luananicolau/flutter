class Animal {
  //atributos
  String _especie;
  String _urlFoto;
  String _urlAudio;
  //metodos
  //construtor
  Animal(String especie, String urlFoto, String urlAudio) {
    this.especie = especie;
    this.urlFoto = urlFoto;
    this.urlAudio = urlAudio;
  }

  //gets
  String get especie => _especie;
  String get urlFoto => _urlFoto;
  String get urlAudio => _urlAudio;

  
}
