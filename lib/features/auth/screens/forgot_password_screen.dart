import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recuperar Contraseña')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ingresa tu correo para recuperar tu contraseña'),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(labelText: 'Correo electrónico'),
              ),
              SizedBox(height: 24),
              ElevatedButton(onPressed: () {}, child: Text('Enviar enlace')),
            ],
          ),
        ),
      ),
    );
  }
}
