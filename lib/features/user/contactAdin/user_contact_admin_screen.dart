import 'package:flutter/material.dart';

class UserContactAdminScreen extends StatelessWidget {
  const UserContactAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contactar Administrador')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text('Envía un mensaje al administrador'),
            SizedBox(height: 16),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Mensaje',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: Text('Enviar mensaje')),
            SizedBox(height: 32),
            Divider(),
            SizedBox(height: 16),
            Text('O llama al administrador'),
            SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.phone),
              label: Text('Llamar'),
            ),
          ],
        ),
      ),
    );
  }
}
