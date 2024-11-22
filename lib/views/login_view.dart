import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospitop/views/components/espacamento_h.dart';
import 'package:hospitop/views/painel_view.dart';
import 'package:hospitop/views/home_view.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/fundoo.jpg'),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
      Center(
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png')),
                  EspacamentoH(h: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  EspacamentoH(h: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      prefixIcon: Icon(Icons.key),
                      border: OutlineInputBorder()
                    ),
                  ),
                  EspacamentoH(h: 10),
                  Text('Esqueceu sua senha?'),
                  EspacamentoH(h: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                    onPressed: () {
                     Navigator.pushReplacementNamed(context, '/painel');
                    },
                      label: Text('Entrar'),
                      icon: Icon(Icons.arrow_circle_right),
                      style: ElevatedButton.styleFrom(
                        shadowColor: const Color.fromARGB(255, 77, 255, 7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))
                          )
                        ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]
    );
  }
}