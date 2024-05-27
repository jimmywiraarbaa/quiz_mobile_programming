import 'package:flutter/material.dart';

void main() => runApp(MenuApp());

class MenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soal 3 Quis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuHomePage(),
    );
  }
}

class MenuHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 14.0),
            child: const Text(
              'Minuman',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.redAccent),
            ),
          ),
          MenuListItem.withIcon(
              Icons.local_bar, 'Jus Jeruk', 'Minuman', Colors.blue.shade300),
          MenuListItem.withIcon(
              Icons.local_bar, 'Jus Apel', 'Minuman', Colors.blue.shade300),
          MenuListItem.withIcon(
              Icons.local_bar, 'Teh Manis', 'Minuman', Colors.blue.shade300),
          Container(
            margin: const EdgeInsets.only(bottom: 14.0),
            child: const Text(
              'Makanan',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.redAccent),
            ),
          ),
          MenuListItem.withIcon(
              Icons.restaurant, 'Mie Kwetiaw', 'Makanan', Colors.redAccent),
          MenuListItem.withIcon(Icons.restaurant, 'Nasi Kapau Tambunsu',
              'Makanan', Colors.redAccent),
          MenuListItem.withIcon(
              Icons.restaurant, 'Minas Komplit', 'Makanan', Colors.redAccent),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Radius sudut
                    ),
                  ),
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Radius sudut
                    ),
                  ),
                  child: const Text(
                    'Bayar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuListItem extends StatelessWidget {
  final Widget leading;
  final String artistName;
  final String albumName;
  final Color bgColor;

  MenuListItem.withIcon(
      IconData icon, this.artistName, this.albumName, this.bgColor)
      : leading = CircleAvatar(
          backgroundColor: bgColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: leading,
            title: Text(
              artistName,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              albumName,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
