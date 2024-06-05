import 'package:flutter/material.dart';

void main(){
  runApp(CatalogoApp());
}

class CatalogoApp extends StatelessWidget {
  const CatalogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Cuerpo(),
    );
  }
}
Widget Cuerpo(){
  return(
    Column(
      children: <Widget>[
        Text("Catalogo")
      ],
    )
  );
}