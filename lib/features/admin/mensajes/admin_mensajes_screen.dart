import 'package:flutter/material.dart';

class AdminMensajesScreen extends StatelessWidget {
  const AdminMensajesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mensajes de Usuarios')),
      body: ListView.builder(
        itemCount: 8, // Simulación
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.message),
              title: Text('Usuario $index'),
              subtitle: Text(
                'Domicilio: Calle Falsa 123\nÚltimo mensaje: Hola, necesito ayuda\nEnviado: 2025-05-19 09:00',
              ),
              trailing: Icon(Icons.mark_email_read),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
