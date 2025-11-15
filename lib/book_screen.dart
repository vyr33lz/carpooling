import 'package:flutter/material.dart';


class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> historyRoutes = [
      {'from': 'Warszawa', 'to': 'Kraków', 'date': '10.11.2025'},
      {'from': 'Gdańsk', 'to': 'Poznań', 'date': '05.11.2025'},
      {'from': 'Wrocław', 'to': 'Katowice', 'date': '01.11.2025'},
      {'from': 'Kraków', 'to': 'Warszawa', 'date': '28.10.2025'},
    ];

    return ListView.builder(
      itemCount: historyRoutes.length,
      itemBuilder: (context, index) {
        final route = historyRoutes[index];
        
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            leading: const Icon(Icons.directions_car_filled, color: Colors.blueAccent),
            title: Text('${route['from']} \u2192 ${route['to']}'), 
            subtitle: Text('Data: ${route['date']}'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Rezerwuje trasę: ${route['from']} do ${route['to']}')),
              );
            },
          ),
        );
      },
    );
  }
}
