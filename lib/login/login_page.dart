import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
Widget lottieAnimationn() {
  //animação de loading pra acessar os dados no firebase
  return Container(
    margin: EdgeInsets.only(top: 15, bottom: 10),
    child: Lottie.asset('lib/animacoes/igrejaaa.json',
        width: 250, height: 250, fit: BoxFit.fill),
  );
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [const Color.fromARGB(255, 78, 148, 205),  Color.fromARGB(255, 255, 255, 255)])),
            child: SingleChildScrollView(
              child: Column(
                children: [
lottieAnimationn(),
Text('O aplicativo da IMT!',style: GoogleFonts.(color: Color(0xFFCCB90C),
              fontSize: 35 )) ],
              ),
            )
      ),
    );
  }
}
