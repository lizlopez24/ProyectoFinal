import 'package:flutter/material.dart';

void main(){
  runApp(RegistroApp());
}
class RegistroApp extends StatelessWidget {
  const RegistroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registrarse",
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
      appBar: AppBar(
        title: const Text("Registro de Usuario"),
      ),
      body:SingleChildScrollView(child: Cuerpo()) 
    );
  }
}
Widget Cuerpo(){
  return(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text("Datos Personales", style: TextStyle(fontSize: 24)),
        ),
        Nombre(),
        Edad(),
        Password(),
        Correo(),
        BotonRegistrar()
      ],
    )
  );
}

final TextEditingController _nombre=TextEditingController();
final TextEditingController _edad=TextEditingController();
final TextEditingController _correo=TextEditingController();
Widget Nombre(){
  return Container(
    padding: const EdgeInsets.all(40),
    child: TextField(
      controller: _nombre,
      decoration: InputDecoration(
        hintText: "Ingrese su nombre",
        fillColor: Color.fromARGB(255, 197, 219, 235),
        filled: true
      ),
    )
  );
}
Widget Edad(){
  return Container(
    padding: const EdgeInsets.all(40),
    child: TextField(
      controller: _edad,
      decoration: InputDecoration(
        hintText: "Ingrese su edad",
        fillColor: Color.fromARGB(255, 197, 219, 235),
        filled: true
      ),
      keyboardType: TextInputType.number,
    )
  );
}
Widget Correo(){
  return Container(
    padding: const EdgeInsets.all(40),
    child: TextField(
      controller: _correo,
      decoration: InputDecoration(
        hintText: "Ingrese su correo electrónico",
        fillColor: Color.fromARGB(255, 197, 219, 235),
        filled: true
      ),
      keyboardType: TextInputType.emailAddress,
    )
  );
}

Widget Password(){
  return Column(
    children: [
    Container(
      padding: EdgeInsets.all(40),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Ingrese su contraseña',
          fillColor: Color.fromARGB(255, 197, 219, 235),
          filled: true,
        ),
        keyboardType: TextInputType.visiblePassword,
      ),
    ),
    ]
  );
}

Widget BotonRegistrar(){
 return(
  FilledButton(onPressed: (){

  }, child: Text("Registrar"))
 );
}