import 'package:flutter/material.dart';
import 'package:inixindo/DaftarJadwalSkripsi.dart';
import 'package:inixindo/GaleriPage.dart';
import 'package:inixindo/TambahJadwalSkripsi.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text('Galeri Gambar'),
              subtitle: Text('Gridview'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return GaleriPage();
                }));
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
            child: ListTile(
              title: Text('ListView'),
              subtitle: Text('Daftar Jadwal Skripsi'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return DaftarJadwalSkripsiPage();
                }));
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text('Dropdown'),
              subtitle: Text('Menambah Jadwal Skripsi'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return TambahJadwalSkripsiPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
