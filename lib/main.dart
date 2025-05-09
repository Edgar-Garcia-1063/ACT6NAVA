import 'package:flutter/material.dart';

// Importaciones de widgets del 12 al 21
import 'package:act6/p12.dart';
import 'package:act6/p13.dart';
import 'package:act6/p14.dart';
import 'package:act6/p15.dart';
import 'package:act6/p16.dart';
import 'package:act6/p17.dart';
import 'package:act6/p18.dart';
import 'package:act6/p19.dart';
import 'package:act6/p20.dart';
import 'package:act6/p21.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantallas 12 a 21',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const PaginaPrincipal(),
      routes: {
        '/p12': (context) => const Widget012(),
        '/p13': (context) => const Widget013(),
        '/p14': (context) => const Widget014(),
        '/p15': (context) => const Widget015(),
        '/p16': (context) => const Widget016(),
        '/p17': (context) => const Widget017(),
        '/p18': (context) => const Widget018(),
        '/p19': (context) => const Widget019(),
        '/p20': (context) => const Widget020(),
        '/p21': (context) => const MyStatefulWidget(),
      },
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(10, (index) {
              final numPantalla = index + 12;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/p$numPantalla'),
                  child: Text('Ir a Widget$numPantalla'),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
