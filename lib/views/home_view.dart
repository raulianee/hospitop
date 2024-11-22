import 'package:flutter/material.dart';
import 'package:hospitop/views/login_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Hospitop"),
      ),
body: LoginView(),      
  );
  }
}