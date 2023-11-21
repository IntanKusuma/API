import 'package:flutter/material.dart';
import 'package:latihanresponsi/Artikel.dart';
import 'package:latihanresponsi/blogs.dart';

class Halaman_Utama extends StatelessWidget {
  const Halaman_Utama({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Jumlah kolom
      crossAxisSpacing: 8.0, // Spasi antar kolom
      mainAxisSpacing: 8.0, // Spasi antar baris
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        MenuCard(artikel: Blogs(image: 'assets/circle.png', name: 'Lingkaran'),),
      ],
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.artikel,});
  final Artikel artikel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return artikel;
        }));
      },
      child: Card(
        child: Column(
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      artikel.image,
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.contain,
                    )
                  ],
                )),
            Text(artikel.name)
          ],
        ),
      ),
    );
  }
}
