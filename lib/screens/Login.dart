import 'package:flutter/material.dart';

void main(){
  runApp(LoginApp());
}
class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),);
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
        title: const Text("Iniciar Sesión"),
      ),
      body: Cuerpo(),
    );
  }
}
Widget Cuerpo(){
  return Container(
    child: (
      Column(
        children: <Widget>[
          Container(
            child: Image.network('https://cdn-icons-png.flaticon.com/512/6326/6326055.png', scale: 3,),
          ),
          Correo(),
          Password(),
          BotonLogin()
        ],
      )
    ),
  );
}

final TextEditingController _correo=TextEditingController();

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

Widget BotonLogin(){
  return(
    FilledButton(onPressed: (){

    }, child: Text("Iniciar Sesión"))
  );
}