import 'package:flutter/material.dart';
import 'package:hospitop/views/consultas_view.dart';
import 'package:hospitop/views/medicos_view.dart';
import 'package:hospitop/views/pacientes_view.dart';
import 'package:hospitop/views/painel_view.dart';
import 'package:hospitop/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospitop',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
        '/painel': (context) => PainelView(),
        '/medicos': (context) => const MedicosView(),
        '/consultas': (context) => const ConsultasView(),
        '/pacientes': (context) => const PacientesView(),
        
      },
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 143, 183)),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage {
  const MyHomePage({required String title});
}
