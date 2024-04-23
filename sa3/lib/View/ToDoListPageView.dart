import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'LoginPageView.dart';

class ToDoList extends StatefulWidget {
  String email;
  ToDoList({required this.email});

  @override
  State<ToDoList> createState() => _ToDoListState(email: email);
}

class _ToDoListState extends State<ToDoList> {
  String email;

  List<String> tasks = []; // Lista de tarefas
  final TextEditingController _controller =
      TextEditingController(); // Controlador de texto para o campo de entrada de nova tarefa

  _ToDoListState({required this.email});

  @override
  void initState() {
    super.initState();
    loadTasks(); // Carrega as tarefas ao iniciar a tela
  }

  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences
        .getInstance(); // Obtém as preferências compartilhadas
    setState(() {
      tasks = prefs.getStringList('${email}_tasks') ??
          []; // Carrega as tarefas armazenadas ou uma lista vazia se não houver tarefas
    });
  }

  Future<void> saveTasks() async {
    SharedPreferences prefs = await SharedPreferences
        .getInstance(); // Obtém as preferências compartilhadas
    await prefs.setStringList('${email}_tasks',
        tasks); // Salva a lista de tarefas nas preferências compartilhadas
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'), // Título da barra de aplicativos
      ),
      body: ListView.builder(
        itemCount: tasks.length, // Número de itens na lista de tarefas
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]), // Título do item da lista
            onLongPress: () {
              _showEditDialog(index); // Mostra o diálogo de edição ao pressionar por um longo tempo
            },
            trailing: IconButton(
              icon: Icon(Icons.edit), // Ícone de edição
              onPressed: () {
                _showEditDialog(index); // Mostra o diálogo de edição ao pressionar o botão
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Nova Tarefa'), // Título do diálogo de nova tarefa
                content: TextField(
                  controller:
                      _controller, // Controlador de texto para o campo de entrada
                  decoration: InputDecoration(
                      hintText: 'Digite a tarefa'), // Dica no campo de entrada
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        setState(() {
                          tasks.add(
                              _controller.text); // Adiciona a nova tarefa à lista
                          saveTasks(); // Salva as tarefas atualizadas
                          _controller.clear(); // Limpa o campo de entrada
                          Navigator.of(context).pop(); // Fecha o diálogo
                        });

                        // Exibir o snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Tarefa adicionada com sucesso!'), // Mensagem do snackbar
                          ),
                        );
                      } else {
                        // Se nenhum texto for adicionado, apenas feche o diálogo
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text('Adicionar'), // Botão para adicionar a tarefa
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add), // Ícone do botão de adicionar
      ),
    );
  }

  // Função para mostrar o diálogo de edição
  void _showEditDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Tarefa'), // Título do diálogo de edição
          content: TextField(
            controller: TextEditingController(text: tasks[index]), // Define o texto atual da tarefa no campo de texto
            onChanged: (value) {
              tasks[index] = value; // Atualiza a tarefa na lista quando o texto é alterado
            },
            decoration: InputDecoration(
                hintText: 'Digite a tarefa'), // Dica no campo de entrada
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  saveTasks(); // Salva as tarefas atualizadas
                  Navigator.of(context).pop(); // Fecha o diálogo
                });

                // Exibir o snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Tarefa editada com sucesso!'), // Mensagem do snackbar
                  ),
                );
              },
              child: Text('Salvar'), // Botão para salvar a edição
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  tasks.removeAt(index); // Remove a tarefa da lista
                  saveTasks(); // Salva as tarefas atualizadas
                  Navigator.of(context).pop(); // Fecha o diálogo
                });

                // Exibir o snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Tarefa excluída com sucesso!'), // Mensagem do snackbar
                  ),
                );
              },
              child: Text('Excluir'), // Botão para excluir a tarefa
            ),
          ],
        );
      },
    );
  }
}
