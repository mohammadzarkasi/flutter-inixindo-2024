import 'package:flutter/material.dart';

class WidgetInputScreen extends StatefulWidget {
  const WidgetInputScreen({super.key});

  @override
  State<WidgetInputScreen> createState() => _WidgetInputScreenState();
}

class _WidgetInputScreenState extends State<WidgetInputScreen> {
  bool _isChecked = false;
  DateTime? _selectedDate;
  bool _isPasswordVisible = true;

  pickADate() async {
    var result = await showDatePicker(
      context: context,
      firstDate: DateTime(1945),
      lastDate: DateTime(3000),
      // initialDate: DateTime.now(),
    );

    print('tanggal dipilih: $result');
    if (result != null) {
      print('tanggal adalah: $result');
      setState(() {
        _selectedDate = result;
      });
    }
  }

  confirmSubmission() {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text('Simpan data'),
          content: Text('Apakah anda yakin ingin menyimpan data ini?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Simpan',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Input'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                label: Text('Username'),
                hintText: 'Masukkan username',
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Text('Saya menyetujui'),
                Checkbox(
                  value: _isChecked,
                  onChanged: (val) {
                    setState(() {
                      _isChecked = val ?? false;
                    });
                  },
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                children: [
                  Text(_selectedDate == null
                      ? 'Pilih tanggal'
                      : '${_selectedDate?.day} ${_selectedDate?.month} ${_selectedDate?.year}'),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      pickADate();
                    },
                    child: Text('Pilih tanggal'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: _isPasswordVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                label: Text('Password'),
                hintText: 'Masukkan password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                confirmSubmission();
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
