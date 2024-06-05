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
      debugShowCheckedModeBanner: false,
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
int indice=0;
class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    final List <Widget> screens=[Cuerpo(context),CatalogoApp(),ReproducionApp()];
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
          //BottomNavigationBarItem(icon: Icon(Icons.app_registration),label: "Registro"),
          //BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "Catalogo"),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back),label: "Reproducir")
        ]
        ),
    );
  }
}

Widget Cuerpo(context){
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
              Container(
                padding: EdgeInsets.only(left: 55,top: 50),
                child: BotonRegistro(context)
              ),
              Container(
                padding: EdgeInsets.only(left: 55, top: 50),
                child: BotonLogin(context)
              ),
            ],
          ),
      ],)
      ),
  );
}

Widget Inicio(){
  return Container(
      padding: EdgeInsets.all(40),
      child: Text("Bienvenido a tu aplicacion favorita de streaming", style: TextStyle(fontSize: 30, fontFamily: 'Georgia', fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
  );
}

Widget BotonRegistro(context){
  return(
    FilledButton(onPressed: (){
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegistroApp()),
          );
    }, child: Text("Registrarse"))
  );
}

Widget BotonLogin(context){
  return(
    FilledButton(onPressed: (){
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginApp()),
          );
    }, child: Text("Iniciar Sesión"))
  );
}