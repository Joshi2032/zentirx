import 'package:flutter/material.dart';

class UserHistoryScreen extends StatelessWidget {
  const UserHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Historial de Entradas/Salidas')),
      body: ListView.builder(
        itemCount: 10, // Simulación
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Vehículo $index'),
              subtitle: Text(
                'Tipo: Entrada\nMétodo: RFID\nFecha: 2025-05-19 08:00',
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
