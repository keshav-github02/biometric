import 'package:biom/pages/home_page.dart';
import 'package:biom/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();
    _authenticate();
  }

  void _authenticate() async {
    bool check = await AuthService().authenticateLocally();
    if (check && mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AuthPage"),
      ),
      body: const Center(
        child: Icon(
          Icons.fingerprint,
          size: 70,
        ),
      ),
    );
  }
}
