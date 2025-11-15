import 'package:flutter/material.dart';
import 'menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _loginWithGoogle(BuildContext context) async {
    // Tutaj normalnie robisz Google Sign-In / FirebaseAuth.
    await Future.delayed(const Duration(milliseconds: 500));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const MenuScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.directions_car, color: Colors.white, size: 120),
            const SizedBox(height: 20),
            const Text(
              'Carpooling App',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: Image.network(
                'https://developers.google.com/identity/images/g-logo.png',
                height: 24,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              label: const Text(
                'Zaloguj przez Google',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () => _loginWithGoogle(context),
            ),
          ],
        ),
      ),
    );
  }
}
