import 'package:flutter/material.dart';

class AdminUsersScreen extends StatelessWidget {
  const AdminUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gestión de Usuarios')),
      body: ListView.builder(
        itemCount: 10, // Simulación
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Usuario $index'),
              subtitle: Text(
                'usuario$index@email.com\nDomicilio: Calle Falsa 123',
              ),
              trailing: PopupMenuButton<String>(
                onSelected: (value) {},
                itemBuilder:
                    (context) => [
                      PopupMenuItem(
                        value: 'ascender',
                        child: Text('Ascender a admin'),
                      ),
                      PopupMenuItem(value: 'editar', child: Text('Editar')),
                      PopupMenuItem(value: 'eliminar', child: Text('Eliminar')),
                    ],
              ),
              onTap: () {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Agregar usuario',
        child: Icon(Icons.add),
      ),
    );
  }
}
