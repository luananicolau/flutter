import 'package:app_lista1/TarefaModel.dart';
import 'package:app_to_do_list/TarefaModel.dart';
import 'package:flutter/material.dart';

class ListatarefasControler extends ChangeNotifier {
List<Tarefa> _tarefas = [];

List<Tarefa> get tarefas => _tarefas;

//metodosCRUD
void adicionarTarefa(String descricao){
  _tarefas.add(Tarefa(descricao, false ));
  notifyListeners();

}
void marcarComoConcluida(int indice){
  if (indice >= 0 && indice < _tarefas.length){
    _tarefas[indice].concluida = true;
    notifyListeners();
  }
}
void excluirTarefa(int indice){
  if (indice >= 0 && indice <_tarefas.length){
    _tarefas.removeAt(indice);
    notifyListeners();
  }
}
}

