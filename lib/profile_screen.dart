import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      children: <Widget>[
        
        const CircleAvatar(
          radius: 60,
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.person, size: 60, color: Colors.white),

        ),
        const SizedBox(height: 12),
        Center(
          child: Text(
            'Jaro Krul', 
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Center(
          child: Text(
            'Użytkownik od 2024',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ),
        const SizedBox(height: 24),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatItem('Ocena', '4.9 ★'),
            _buildStatItem('Przejazdy', '102'),
            _buildStatItem('Jako kierowca', '35'),
          ],
        ),
        const SizedBox(height: 24),
        const Divider(indent: 16, endIndent: 16), 

     
        ListTile(
          leading: const Icon(Icons.edit_outlined),
          title: const Text('Edytuj profil'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
 
          },
        ),
        ListTile(
          leading: const Icon(Icons.directions_car_outlined),
          title: const Text('Moje pojazdy'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
  
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined),
          title: const Text('Ustawienia'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
 
          },
        ),
        ListTile(
          leading: const Icon(Icons.help_outline),
          title: const Text('Pomoc i wsparcie'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
          },
        ),
        const Divider(indent: 16, endIndent: 16),
        ListTile(
          leading: const Icon(Icons.logout, color: Colors.redAccent),
          title: const Text(
            'Wyloguj',
            style: TextStyle(color: Colors.redAccent),
          ),
          onTap: () {
          },
        ),
      ],
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}