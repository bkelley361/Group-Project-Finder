import 'package:flutter/material.dart';
import 'package:group_project_finder/LoginScreen.dart';
import 'package:group_project_finder/register.dart';
import './DashboardScreen.dart';
import './LoginScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Group Project',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        'register': (context) => const RegisterPage(),
        'login': (context) => const LoginPage(),
        'dashboard': (context) => const DashboardScreen(title: 'Dashboard'),
      },
    );
  }
}


