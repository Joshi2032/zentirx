import 'package:flutter/material.dart';

class AdminCamarasScreen extends StatelessWidget {
  const AdminCamarasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cámaras')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Cámara Principal'),
              subtitle: Text('Stream en vivo'),
              trailing: IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
