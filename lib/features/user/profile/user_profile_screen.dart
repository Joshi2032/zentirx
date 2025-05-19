import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      appBar: AppBar(title: Text('Perfil de Usuario')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal:
                  isMobile ? 16.0 : MediaQuery.of(context).size.width * 0.25,
              vertical: 32.0,
            ),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 40,
                        child: Icon(Icons.person, size: 48),
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Nombre: Usuario Ejemplo',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Correo: usuario@email.com',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'Teléfono: 555-5678',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'Domicilio: Calle Verdadera 456',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Vehículos asociados:',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Icon(Icons.directions_car),
                        title: Text('Auto Rojo - ABC123'),
                        subtitle: Text('Tipo: Auto'),
                      ),
                    ),
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text('Cambiar contraseña'),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text('Cerrar sesión'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
