import 'package:flutter/material.dart';

class ConsultasView extends StatefulWidget {
  const ConsultasView({super.key});

  @override
  State<ConsultasView> createState() => _ConsultasViewState();
}

class _ConsultasViewState extends State<ConsultasView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("consultas"),
      ),
    );
  }
}