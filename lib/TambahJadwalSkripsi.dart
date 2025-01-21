import 'package:flutter/material.dart';

class Dosen {
  String nama;
  Dosen({required this.nama});
}

class TambahJadwalSkripsiPage extends StatefulWidget {
  TambahJadwalSkripsiPage({super.key});

  @override
  State<TambahJadwalSkripsiPage> createState() =>
      _TambahJadwalSkripsiPageState();
}

class _TambahJadwalSkripsiPageState extends State<TambahJadwalSkripsiPage> {
  List<Dosen> _listDosen = [
    Dosen(nama: 'Priza'),
    Dosen(nama: 'Dwi Wijonarko'),
    Dosen(nama: 'Gama'),
    Dosen(nama: 'Diah'),
    Dosen(nama: 'Gayatri'),
    Dosen(nama: 'Harry'),
    Dosen(nama: 'Anang'),
  ];

  String? pembimbing1;
  String? pembimbing2;
  String? penguji1;
  String? penguji2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Jadwal Skripsi'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(
                child: Text('Nama Mahasiswa'),
                width: double.infinity,
              ),
              TextFormField(),
              SizedBox(
                child: Text('Pembimbing 1'),
                width: double.infinity,
              ),
              buildDropdownDosen(
                  listDosen: _listDosen,
                  value: pembimbing1,
                  onChange: (v) {
                    print('Pembimbing 1: $v');
                    setState(() {
                      pembimbing1 = v;
                    });
                  }),
              SizedBox(
                child: Text('Pembimbing 2'),
                width: double.infinity,
              ),
              buildDropdownDosen(
                  listDosen: _listDosen,
                  value: pembimbing2,
                  onChange: (v) {
                    print('Pembimbing 2: $v');
                    setState(() {
                      pembimbing2 = v;
                    });
                  }),
              SizedBox(
                child: Text('Penguji 1'),
                width: double.infinity,
              ),
              buildDropdownDosen(
                  listDosen: _listDosen,
                  value: penguji1,
                  onChange: (v) {
                    print('Penguji 1: $v');
                    setState(() {
                      penguji1 = v;
                    });
                  }),
              SizedBox(
                child: Text('Penguji 2'),
                width: double.infinity,
              ),
              buildDropdownDosen(
                  listDosen: _listDosen,
                  value: penguji2,
                  onChange: (v) {
                    print('Penguji 2: $v');
                    setState(() {
                      penguji2 = v;
                    });
                  }),
              SizedBox(
                child: Text('Waktu Pelaksanaan'),
                width: double.infinity,
              ),
              SizedBox(height: 100),
              ElevatedButton(onPressed: () {}, child: Text('Simpan')),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdownDosen(
      {required List<Dosen> listDosen,
      required Function(String v) onChange,
      required String? value}) {
    return DropdownButton(
        value: value,
        isExpanded: true,
        items: listDosen.map((d) {
          return DropdownMenuItem(
            child: Text(d.nama),
            value: d.nama,
          );
        }).toList(),
        onChanged: (v) {
          onChange(v.toString());
        });
  }
}
