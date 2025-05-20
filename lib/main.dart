import 'package:flutter/material.dart';
import 'package:zentrix/features/auth/screens/forgot_password_screen.dart';
import 'package:zentrix/features/auth/screens/login_initial.dart';
import 'package:zentrix/features/auth/screens/login_screen.dart';
import 'package:zentrix/features/auth/screens/splash_screen.dart';
import 'package:zentrix/features/user/contactAdin/user_contact_admin_screen.dart';
import 'package:zentrix/features/user/history/user_history_screen.dart';
import 'package:zentrix/features/user/home/user_dashboard_screen.dart';
import 'package:zentrix/features/user/profile/user_profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/InitialScreen': (context) => const InitialScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/ForgotPassword': (context) => const ForgotPasswordScreen(),
        '/UserDashboard': (context) => const UserDashboardScreen(),
        '/UserProfile': (context) => const UserProfileScreen(),
        '/UserHistory': (context) => const UserHistoryScreen(),
        '/UserContactAdmin': (context) => const UserContactAdminScreen(),
      },
    );
  }
}
