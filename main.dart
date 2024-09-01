import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void clica() {
    print('Oi');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 215, 231, 238),
              centerTitle: true,
              title: const Text(
                'Edição de atividade',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 34,
                ),
              )),
          body: const Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 650,
                    height: 50,
                    child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.description),
                            hintText: 'Informe o nome da atividade')),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.calendar_month),
                            hintText: 'Informe a data da atividade')),
                  ),
                ],
              ),
              Row(
                children: [
                  FilledButton(onPressed: null, child: Text('Salvar Alteração'))
                ],
              ),
            ],
          )),
    );
  }
}
