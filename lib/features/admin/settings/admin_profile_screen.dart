import 'package:flutter/material.dart';

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil Administrador')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 40, child: Icon(Icons.person, size: 48)),
            SizedBox(height: 24),
            Text('Nombre: Admin Ejemplo'),
            Text('Correo: admin@email.com'),
            Text('Teléfono: 555-1234'),
            Text('Domicilio: Calle Falsa 123'),
            SizedBox(height: 24),
            ElevatedButton(onPressed: () {}, child: Text('Cambiar contraseña')),
            ElevatedButton(onPressed: () {}, child: Text('Cerrar sesión')),
          ],
        ),
      ),
    );
  }
}
