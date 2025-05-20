import 'package:flutter/material.dart';

class AdminRegistrosScreen extends StatelessWidget {
  const AdminRegistrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Entradas y Salidas')),
      body: ListView.builder(
        itemCount: 15, // Simulación
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Vehículo $index'),
              subtitle: Text(
                'Dueño: Usuario $index\nTipo: Entrada\nMétodo: RFID\nFecha: 2025-05-19 08:00',
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
