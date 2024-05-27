import 'package:flutter/material.dart';

//saya menjalankan menggunakan Chrome pak
// flutter run -t lib/pages/music.dart -d chrome

void main() => runApp(MusicMinangApp());

class MusicMinangApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soal 2 Quis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MusicMinangHomePage(),
    );
  }
}

class MusicMinangHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Minang'),
      ),
      body: ListView(
        children: <Widget>[
          MusicListItem.withInitial(
              'K', 'Kintani', 'Nama Album', Colors.blue.shade300),
          MusicListItem.withInitial(
              'R', 'Rayola', 'Nama Album', Colors.red.shade300),
          MusicListItem.withInitial(
              'F', 'Fauzana', 'Janji ka janji', Colors.green.shade300),
          MusicListItem.withInitial(
              'D', 'David Iztambul', 'Nama Album', Colors.red.shade300),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(8.0), // Adjust the value as needed
              child: Image.asset('lib/assets/images/elsa-pitaloka.jpg'),
            ),
          ),
          MusicListItem.withImage('lib/assets/images/elsa-pitaloka.jpg',
              'Elsa Pitaloka', 'Nama Album', Colors.red.shade300),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
      ),
    );
  }
}

class MusicListItem extends StatelessWidget {
  final Widget leading;
  final String artistName;
  final String albumName;
  final Color bgColor;

  MusicListItem.withInitial(
      String initial, this.artistName, this.albumName, this.bgColor)
      : leading = CircleAvatar(
          backgroundColor: bgColor,
          child: Text(
            initial,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        );

  MusicListItem.withImage(
      String imagePath, this.artistName, this.albumName, this.bgColor)
      : leading = CircleAvatar(
          backgroundColor: bgColor,
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 40,
              height: 40,
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
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
              style: TextStyle(
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
