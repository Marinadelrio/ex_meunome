import 'package:flutter/material.dart';
import 'package:ex_meunome/main.dart';

class NameForm extends StatelessWidget {
  NameForm({Key? key}) : super(key: key);

  final nameEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Nome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'digite seu nome',
                ),
                controller: nameEditController,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                final String newName = nameEditController.text;
                Navigator.of(context).pop(newName);
              },
              child: Text('Adicionar'),
            )
          ],
        ),
      ),
    );
  }
}
