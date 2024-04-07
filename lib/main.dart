import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "latihan",
      home: SourcePage(),
    )
  );
}

class SourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Asal')),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DestinationPage()),
          );
        },
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 50,
          ),
        ),
      ),
    );
  }
}
// Halaman Tujuan
class DestinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Tujuan')),
      body: Center(
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 150,
          ),
        ),
      ),
    );
  }
}