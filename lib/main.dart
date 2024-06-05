import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_final/screens/Catalogo.dart';
import 'package:proyecto_final/screens/Login.dart';
import 'package:proyecto_final/screens/Registro.dart';
import 'package:proyecto_final/screens/Reproduccion.dart';

void main() {
  runApp(const Bienvenida());
}
class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Techflix",
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
  int indice=0;
  @override
  Widget build(BuildContext context) {
    List <Widget> screens=[Cuerpo(),RegistroApp(), LoginApp(),CatalogoApp(),ReproducionApp()];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Techflix"),
      ),
      body: screens[indice],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: indice,
        onTap: (valor) {
          setState(() {
            indice=valor;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.app_registration),label: "Registro"),
          BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "Catalogo"),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back),label: "Reproducir")
        ]
        ),
    );
  }
}

Widget Cuerpo(){
  return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://canalc.com.ar/wp-content/uploads/2022/08/cultura.jpg')
          )
      ),
      child:(
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 290),
          child: Inicio(),
          ),
          Row(
            children: [
              BotonRegistro(),
              BotonLogin()
            ],
          ),
      ],)
      ),
  );
}

Widget Inicio(){
  return Container(
      padding: EdgeInsets.all(50),
      child: Text("Bienvenido a tu aplicacion favorita", style: TextStyle(fontSize: 35, fontFamily: 'Georgia', fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
  );
}

Widget BotonRegistro(){
  return(
    FilledButton(onPressed: (){

    }, child: Text("Registrarse"))
  );
}

Widget BotonLogin(){
  return(
    FilledButton(onPressed: (){

    }, child: Text("Iniciar Sesión"))
  );
}