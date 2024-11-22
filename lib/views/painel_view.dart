import 'package:flutter/material.dart';
import 'package:hospitop/views/components/drawer.components.dart';
import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:google_fonts/google_fonts.dart';

class PainelView extends StatefulWidget {
  const PainelView({super.key});

  @override
  State<PainelView> createState() => _PainelViewState();
}

class _PainelViewState extends State<PainelView> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: DrawerComponents(),
      appBar: AppBar(
        title: Text('Painel do Hospitop'),
      ),
      body: Column(
        children: [
          Text('Bem vindo ao painel'),
          ElevatedButton(
              onPressed: () => {
                    ArtSweetAlert.show(
                        context: context,
                        artDialogArgs: ArtDialogArgs(
                            type: ArtSweetAlertType.success,
                            title: "A success message!",
                            text: "Show a success message with an icon"))
                  },
              child: Text('Voltar')),
          Text(
            'This is Google Fonts',
            style: GoogleFonts.lato(fontSize: 40),
          ),
          Text(
            'This is Google Fonts',
            style: GoogleFonts.butterflyKids(fontSize: 40),
          ),
        ],
      ),
    );
    
  }
}
