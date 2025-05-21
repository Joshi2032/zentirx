import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF3CB043), // #3CB043
              Color(0xFF43B02A), // #43B02A
              Color(0xFF0A2A66), // #0A2A66
            ],
            stops: [0.0, 0.5, 1.0],
            transform: GradientRotation(135 * 3.1415927 / 180),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double maxWidth =
                    constraints.maxWidth < 500 ? constraints.maxWidth : 400;
                return Align(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxWidth),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth < 500 ? 16.0 : 32.0,
                        vertical: 32.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.person_add,
                            size: 80,
                            color: Colors.white, // Mejor contraste
                            shadows: [
                              Shadow(
                                blurRadius: 8,
                                color: Color(0xFF6A1B9A),
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          const Text(
                            'Pantalla de registro',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 4,
                                  color: Color(0xFF0A2A66),
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          _styledTextField('Nombre'),
                          const SizedBox(height: 16),
                          _styledTextField(
                            'Correo',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 16),
                          _styledTextField(
                            'Teléfono',
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(height: 16),
                          _styledTextField('Contraseña', obscureText: true),
                          const SizedBox(height: 16),
                          _styledTextField('Domicilio'),
                          const SizedBox(height: 16),
                          _styledDropdown(),
                          const SizedBox(height: 16),
                          _styledTextField('Modelo de auto'),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.9),
                                foregroundColor: Color(0xFF6A1B9A),
                                elevation: 6,
                                shadowColor: Color(0xFF0A2A66),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                ),
                              ),
                              child: const Text(
                                'Registrarse',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _styledTextField(
    String label, {
    TextInputType? keyboardType,
    bool obscureText = false,
  }) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white54),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      style: const TextStyle(color: Colors.white),
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorColor: Colors.white,
    );
  }

  Widget _styledDropdown() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Residencia',
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white54),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      dropdownColor: const Color(0xFF43B02A),
      style: const TextStyle(color: Colors.white),
      items: const [
        DropdownMenuItem(
          value: '1',
          child: Text('Residencia 1', style: TextStyle(color: Colors.white)),
        ),
        DropdownMenuItem(
          value: '2',
          child: Text('Residencia 2', style: TextStyle(color: Colors.white)),
        ),
      ],
      onChanged: (value) {},
      iconEnabledColor: Colors.white,
    );
  }
}
