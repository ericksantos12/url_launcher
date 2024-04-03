import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter URL Launcher",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(title: "URL Launcher"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              foregroundColor: Colors.amberAccent,
              backgroundColor: Colors.red,
              onPressed: abrirGmail,
              child: const Text('Abrir o Gmail'),
            ),
            ElevatedButton(
                onPressed: fazerLigacao,
                child: const Text('FAzer uma Ligação'),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.amberAccent,
                    backgroundColor: Colors.red)),
            ElevatedButton(
                onPressed: enviarSMS,
                child: const Text("Enviar SMS"),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.amberAccent,
                    backgroundColor: Colors.red)),
          ],
        )));
  }
}
