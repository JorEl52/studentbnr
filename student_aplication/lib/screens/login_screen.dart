import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Espaciado entre elementos y tamaños, variables de texto intuitivas
const double spacingSizeTextForm = 5.0;
const double sizeTitle = 20;
const double sizeSubtitle = 12;
const double sizeLogo = 100;
const double spaceBetweenButtonsForm = 20;
const double spaceBetweenLogoTitle = 40;
const double heightForm = 40;
const double widthForm = 300;
const double radiusGradient = 2.0;
//Titulos y subtitulos, variables de texto intuitivas, finalizar con text
const String emailText = 'Correo Electrónico:';
const String passwordText = 'Contraseña:';
const String titlePage = 'Iniciar Sesión';
const String buttonStartText = 'Entrar';
const String buttonRegisterText = 'Regístrate ahora';
const String forgotPasswordText = 'Olvidaste tu contaseña';
const String questionText = '¿Aún no eres parte de Student?';
//Ubicacion de archivos
const String logoPath = "assets/images/student_logo.png";

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xFF5959eb),
                  Color(0xFF05187d),
                  Color(0xFF243754),
                  Color(0xFF203394),
                  Color(0xFF5676a8),
                ],
                center: Alignment(-1.0, -1.0),
                radius: radiusGradient,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xFF5959eb),
                  Color(0xFF05187d),
                  Color(0xFF243754),
                  Color(0xFF203394),
                  Color(0xFF5676a8),
                ],
                center: Alignment(1.0, 1.0),
                radius: radiusGradient,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    logoPath,
                    height: sizeLogo,
                  ),
                  const SizedBox(
                      height:
                          spaceBetweenLogoTitle), //Espacio entre logo y titulo
                  Text(
                    titlePage,
                    style: GoogleFonts.poppins(
                        fontSize: sizeTitle,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                      height: spacingSizeTextForm), //Espacio titulo-texto
                  const Text(
                    emailText,
                    style:
                        TextStyle(fontSize: sizeSubtitle, color: Colors.white),
                  ),
                  const SizedBox(
                      height: spacingSizeTextForm), //Espacio texto-form
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: spacingSizeTextForm), //Espacio form-texto
                  const Text(
                    passwordText,
                    style:
                        TextStyle(fontSize: sizeSubtitle, color: Colors.white),
                  ),
                  const SizedBox(
                      height: spacingSizeTextForm), //Espacio texto-form
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: spacingSizeTextForm), //Espacio form-texto
                  const SizedBox(
                    width: widthForm,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        forgotPasswordText,
                        style: TextStyle(
                          fontSize: sizeSubtitle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: spaceBetweenButtonsForm), //Espacio texto-button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF05187d),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(buttonStartText),
                  ),
                  const SizedBox(
                      height: spaceBetweenButtonsForm), //Espacio button-texto
                  const Text(
                    questionText,
                    style:
                        TextStyle(fontSize: sizeSubtitle, color: Colors.white),
                  ),
                  const SizedBox(
                      height: spacingSizeTextForm), //Espacio texto-button
                  ElevatedButton(
                      onPressed: () {}, child: const Text(buttonRegisterText)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
