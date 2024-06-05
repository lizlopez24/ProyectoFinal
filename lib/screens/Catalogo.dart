import 'package:flutter/material.dart';

void main(){
  runApp(CatalogoApp());
}

final List<String> peliculas=['Shrek','Una esposa de mentiras'];

class CatalogoApp extends StatelessWidget {
  
  const CatalogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CatalogItem(item: "Shrek", descripcion: "Un ogro llamado Shrek vive en su pantano, pero su preciada soledad se ve súbitamente interrumpida por la invasión de los ruidosos personajes de los cuentos de hadas.", img: "https://pics.filmaffinity.com/Shrek-903764423-large.jpg", anioPublicacion: "2005"),
            CatalogItem(item: "Una esposa de mentiras", descripcion: "El cirujano Danny decide contratar a su ayudante Katherine, una madre soltera con hijos, para que finjan ser su familia.", img: "https://i.pinimg.com/originals/50/3d/16/503d16c11f59404d41d6d42a8c0fbfd9.jpg", anioPublicacion: "2007"),
            CatalogItem(item: "500 dias con ella", descripcion: "Tom, un escritor de tarjetas de felicitación y un romántico desesperado, se sorprende totalmente cuando su novia, Summer, repentinamente lo abandona. Él analiza los 500 días que pasaron juntos para intentar descubrir en que parte falló su relación amorosa", img: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4211b2f16b7c60a8f1ca58850c95084c0e6ee94c39f8e214206ade9f73c981f0._RI_TTW_.jpg", anioPublicacion: "2001"),
            CatalogItem(item: "Intensamente", descripcion: "Las cinco emociones que conviven en el interior de una niña llamada Riley, alegría, miedo, desagrado, ira y tristeza, compiten por tomar el control de sus acciones.", img: "https://www.losandes.com.ar/resizer/v6w9M9im93qYQziL8_morWcMxkg=/1023x1458/smart/cloudfront-us-east-1.images.arcpublishing.com/grupoclarin/HBUO57SBANAS5L5LC4C4H6FT2E.jpg", anioPublicacion: "2019")
          ],
        ),
      ),
    );
  }
}
Widget Cuerpo(){
  return(
    Column(
      children: <Widget>[
      ],
    )
  );
}



class CatalogItem extends StatelessWidget {
  final String item;
  final String descripcion;
  final String img;
  final String anioPublicacion;
  CatalogItem({required this.item, required this.descripcion, required this.img, required this.anioPublicacion});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        leading: Image.network('$img'),
        title: Text(item),
        subtitle: Text('Año de Publicación $anioPublicacion'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$descripcion')),
          );
        },
      ),
    );
  }
}