import 'package:flutter/material.dart';

class DobleMeitatScreen extends StatefulWidget {
  const DobleMeitatScreen({super.key});

  State<DobleMeitatScreen> createState() => _DobleMeitatScreenState();
}

class _DobleMeitatScreenState extends State<DobleMeitatScreen> {
  double valor = 1.0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sofian Aissaoui'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Prem el botó que vulguis',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              'Valor actual: ${valor.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Botó Meitat
                ElevatedButton(
                  onPressed: () {
                    valor /= 2;
                    setState(() {});  // Eliminat el control de l'estil, menys eficient
                  },
                  child: Text('Meitat'),
                ),
                SizedBox(width: 15),

                // Botó Inicialitzar
                ElevatedButton(
                  onPressed: () {
                    valor = 1.0;
                    setState(() {});
                  },
                  child: Text('Inicialitzar'),
                ),
                SizedBox(width: 15),

                // Botó Doble
                ElevatedButton(
                  onPressed: () {
                    valor *= 2;
                    setState(() {});
                  },
                  child: Text('Doble'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
