class AnimalController {
//atributo
  List<Animal> _listAnimal = [];

  //get da lista
  List get listarAnimais => _listAnimal;

  //adicionar animal
  void adicionarAnimal(String especie, String urlFoto, String urlAudio) {
    Animal novoAnimal = Animal(especie, urlFoto, urlAudio);
    _listAnimal.add(novoAnimal);
  }
}
