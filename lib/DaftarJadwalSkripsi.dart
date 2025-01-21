import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_http_request.dart';
import 'package:intl/intl.dart';

class JadwalSkripsiItem {
  String namaMahasiswa;
  String namaPembimbing1;
  String namaPembimbing2;
  String namaPenguji1;
  String namaPenguji2;
  DateTime jadwalSidang;

  JadwalSkripsiItem(
      {required this.jadwalSidang,
      required this.namaMahasiswa,
      required this.namaPembimbing1,
      required this.namaPembimbing2,
      required this.namaPenguji1,
      required this.namaPenguji2});
}

class DaftarJadwalSkripsiPage extends StatelessWidget {
  DaftarJadwalSkripsiPage() {
    // Intl.withLocale('id_ID', (){
    //   print('intl with locale...');
    // });
    // initializeDateFormatting('id_ID', '').then((v){
    //   print('date formatting initialized');
    // });
  }

  List<JadwalSkripsiItem> listJadwalSkripsi = [
    JadwalSkripsiItem(
        jadwalSidang: DateTime(2025, 1, 21, 8),
        namaMahasiswa: 'Anita Silvia',
        namaPembimbing1: 'Oktalia',
        namaPembimbing2: 'Diah Ayu',
        namaPenguji1: 'Fajrin',
        namaPenguji2: 'Agustina'),
    JadwalSkripsiItem(
        jadwalSidang: DateTime(2025, 1, 21, 8),
        namaMahasiswa: 'Suainul Yaqin',
        namaPembimbing1: 'Slamin',
        namaPembimbing2: 'Nova',
        namaPenguji1: 'Yanuar',
        namaPenguji2: 'Gayatri'),
    JadwalSkripsiItem(
        jadwalSidang: DateTime(2025, 1, 21, 9, 30),
        namaMahasiswa: 'Naimatul Mutamimah',
        namaPembimbing1: 'Anang',
        namaPembimbing2: 'Harry',
        namaPenguji1: 'Agustina',
        namaPenguji2: 'Dwi Wijonarko'),
  ];

  // var dateFormatter = DateFormat('EEEE, d MMMM yyyy, HH:mm', 'id_ID');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Jadwal Skripsi'),
      ),
      body: ListView(
        children: [
          for (var js in listJadwalSkripsi)
            Card(
              child: ListTile(
                title: Text(js.namaMahasiswa),
                subtitle: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pembimbing:'),
                        Text(js.namaPembimbing1),
                        Text(js.namaPembimbing2),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Penguji:'),
                        Text(js.namaPenguji1),
                        Text(js.namaPenguji2),
                      ],
                    ),
                  ],
                ),
                trailing: SizedBox(
                    width: 100,
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          DateFormat('EEEE').format(js.jadwalSidang),
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          DateFormat('d MMMM yyyy').format(js.jadwalSidang),
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          DateFormat('HH:mm').format(js.jadwalSidang),
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
              ),
            ),
        ],
      ),
    );
  }
}
