import 'package:flutter/material.dart';

class UserDashboardScreen extends StatelessWidget {
  const UserDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio Usuario')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bienvenido', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: Icon(Icons.directions_car),
                title: Text('Entradas/Salidas recientes'),
                subtitle: Text('Ver historial de tus vehículos'),
                onTap: () {},
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notificaciones'),
                subtitle: Text('Ver tus notificaciones recientes'),
                onTap: () {},
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text('Contactar Administrador'),
                subtitle: Text('Envía un mensaje o llama'),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
