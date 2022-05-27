import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventos no Flutter',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  State<StatefulWidget> createState() => _Estado();
}

class _Estado extends State<StatefulWidget> {
  String _msg = "Mensagem";
  String? _erroCampo = null;
  bool _ligado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(child: Text(_msg),
              onTap: () => setState(() => _msg = "Tocou"),
              onDoubleTap: () => setState(() => _msg = "Curtiu"),
            ),
            TextButton(child: Text("Clique-me"),
              onPressed: () => setState(() => _msg = "Clicou 1x"),
              onLongPress: () => setState(() => _msg = "Clicou e segurou"),
            ),
            Switch(value: _ligado,
                onChanged: (value) => setState(() => _ligado = value)
            ),
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Campo"),

            ),
              onChanged: (value) => setState(
                      () => _erroCampo = value.isEmpty ? "Campo obrigatorio" : null
              ),
            ),
          ],
        )
    );
  }
}
