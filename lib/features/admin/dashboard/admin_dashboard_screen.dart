import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Panel de Administrador')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Resumen', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _DashboardCard(title: 'Usuarios', value: '120'),
                _DashboardCard(title: 'Vehículos', value: '80'),
                _DashboardCard(title: 'Entradas Hoy', value: '30'),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Accesos rápidos',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 16,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.people),
                  label: Text('Usuarios'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.directions_car),
                  label: Text('Vehículos'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                  label: Text('Cámaras'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                  label: Text('Mensajes'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  const _DashboardCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              value,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
