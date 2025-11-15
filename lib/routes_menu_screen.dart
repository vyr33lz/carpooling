import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/route_model.dart';

class RoutesMenuScreen extends StatelessWidget {
  const RoutesMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<RouteModel>('routes');

    return Scaffold(
      appBar: AppBar(title: const Text('Wszystkie trasy')),
      body: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, Box<RouteModel> box, _) {
          if (box.isEmpty) return const Center(child: Text('Brak zapisanych tras'));
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              final route = box.getAt(index)!;
              return ListTile(
                title: Text(
                  'Trasa: ${route.start.latitude.toStringAsFixed(4)},${route.start.longitude.toStringAsFixed(4)} → ${route.end.latitude.toStringAsFixed(4)},${route.end.longitude.toStringAsFixed(4)}',
                ),
                subtitle: Text(
                  'Data odjazdu: ${route.date.day}.${route.date.month}.${route.date.year} ${route.date.hour}:${route.date.minute.toString().padLeft(2,'0')}',
                ),
                onTap: () {
                  // tu możesz później dodać np. zoom do trasy na mapie
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Przejdź do mapy, aby zobaczyć trasę')));
                },
              );
            },
          );
        },
      ),
    );
  }
}
