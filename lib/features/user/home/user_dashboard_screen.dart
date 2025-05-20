import 'package:flutter/material.dart';
import 'package:zentrix/features/user/contactAdin/user_contact_admin_screen.dart';
import 'package:zentrix/features/user/history/user_history_screen.dart';
import 'package:zentrix/features/user/profile/user_profile_screen.dart';


class UserDashboardScreen extends StatefulWidget {
  const UserDashboardScreen({Key? key}) : super(key: key);

  @override
  State<UserDashboardScreen> createState() => _UserDashboardScreenState();
}

class _UserDashboardScreenState extends State<UserDashboardScreen> {
  int _pressedIndex = -1;

  Widget _buildCard({
    required int index,
    required IconData iconData,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required List<Color> gradientColors,
  }) {
    bool isPressed = _pressedIndex == index;

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressedIndex = index),
      onTapUp: (_) {
        setState(() => _pressedIndex = -1);
        onTap();
      },
      onTapCancel: () => setState(() => _pressedIndex = -1),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: isPressed
              ? [
                  BoxShadow(
                    color: gradientColors.last.withOpacity(0.6),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ]
              : [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ],
        ),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: gradientColors.reversed.toList(),
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [
                BoxShadow(
                  color: gradientColors.last.withOpacity(0.5),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 28,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
              shadows: [
                Shadow(
                  blurRadius: 4,
                  color: Colors.black45,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              shadows: [
                Shadow(
                  blurRadius: 3,
                  color: Colors.black38,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
            color: Colors.white70,
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final paddingHorizontal =
        isMobile ? 20.0 : MediaQuery.of(context).size.width * 0.2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio Usuario'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3CB043),
                Color(0xFF0A2A66),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3CB043),
              Color(0xFF0A2A66),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenido',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: const [
                        Shadow(
                          blurRadius: 6,
                          color: Colors.black38,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
              ),
              const SizedBox(height: 32),
              _buildCard(
                index: 0,
                iconData: Icons.directions_car,
                title: 'Entradas/Salidas recientes',
                subtitle: 'Ver historial de tus vehículos',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserHistoryScreen(),
                    ),
                  );
                },
                gradientColors: const [Color(0xFF72BF78), Color(0xFF0A2A66)],
              ),
              _buildCard(
                index: 1,
                iconData: Icons.notifications,
                title: 'Notificaciones',
                subtitle: 'Ver tus notificaciones recientes',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfileScreen(),
                    ),
                  );
                },
                gradientColors: const [Color(0xFFFDE68A), Color(0xFF0A2A66)],
              ),
              _buildCard(
                index: 2,
                iconData: Icons.message,
                title: 'Contactar Administrador',
                subtitle: 'Envía un mensaje o llama',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserContactAdminScreen(),
                    ),
                  );
                },
                gradientColors: const [Color(0xFFB2DFDB), Color(0xFF0A2A66)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
