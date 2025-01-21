import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GaleriItem {
  String path;
  Color color;

  GaleriItem({required this.path, required this.color});
}

class GaleriPage extends StatefulWidget {
  const GaleriPage({super.key});

  @override
  State<GaleriPage> createState() => _GaleriPageState();
}

class _GaleriPageState extends State<GaleriPage> {
  @override
  Widget build(BuildContext context) {
    List<GaleriItem> listGaleriItem = [
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/40/57/ec/4057ec1ea94eb9a7b6f8a1fad6c41059.jpg',
          color: Colors.yellow),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/4b/a8/f5/4ba8f544993749dd7235a293c860e591.jpg',
          color: Colors.blue),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/27/da/8a/27da8a03846b90dbee2ae00801baccfc.jpg',
          color: Colors.green),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/81/8e/db/818edb4922925bb709733863c6b4bbd9.jpg',
          color: Colors.orange),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/8b/b0/17/8bb01714372cca778020409c0a1dcfda.jpg',
          color: Colors.amber),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/aa/8b/de/aa8bde54a84464840c4548444a478c2e.jpg',
          color: Colors.red),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/5d/8e/08/5d8e083680fb3a8e16d156314ac8af43.jpg',
          color: Colors.red),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/1a/d3/70/1ad3709df99a2b1b4e7046b9adcb9b4a.jpg',
          color: Colors.red),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/10/e6/3e/10e63ec7e0954cfa8bf4d641074d7961.jpg',
          color: Colors.red),
      GaleriItem(
          path:
              'https://i.pinimg.com/736x/ff/c8/5a/ffc85abf11e102318836b709d896e2aa.jpg',
          color: Colors.red),
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri'),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          SizedBox(child: Text('Galeri Utama'), width: double.infinity),
          SizedBox(height: 8),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                ...listGaleriItem.map((gi) {
                  return Container(
                      color: gi.color, child: Image.network(gi.path));
                }),
                // for (var gi in listGaleriItem)
                //   Container(
                //     color: gi.color,
                //     child: Image.network(gi.path),
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
