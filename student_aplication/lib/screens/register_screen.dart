import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Espaciado entre elementos y tamaños
const double spacingSizeTitleSideBox = 20;
const double spacingSizeBox = 15;
const double sizeTitle = 20;
const double sizeSubtitle = 15;
const double spaceBetweenBoxSubTitle = 20;
const double spaceBetweenOpcion = 5;
const double spaceBetweenOptionStart = 10;
const double heightForm = 40;
const double widthForm = 300;
const double radiusGradient = 2.0;
//Titulos y subtitulos
const String welcomText = 'Te damos la bienvenida';
const String nameLogin = 'Nombre completo';
const String phoneLogin = 'Número de teléfono';
const String birthLogin = 'Fecha de nacimiento';
const String gerenText = 'Género';
const String menOption = 'Hombre';
const String womenOption = 'Mujer';
const String otherOption = 'Prefiero no decir';
const String emailLogin = 'Correo electrónico';
const String passwordLogin = 'Contraseña';
const String checkLogin = 'Verificar contraseña';
const String buttonSend = 'Enviar';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();

  bool _isAccepted1 = false;
  bool _isAccepted2 = false;
  bool _isAccepted3 = false;

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
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    welcomText,
                    style: GoogleFonts.poppins(
                        fontSize: sizeTitle,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: spacingSizeTitleSideBox),
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextField(
                      controller: _controller1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: nameLogin,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: spacingSizeBox),
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextField(
                      controller: _controller2,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: phoneLogin,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: spacingSizeBox),
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextField(
                      controller: _controller3,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: birthLogin,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: spaceBetweenBoxSubTitle),
                  const Text(
                    gerenText,
                    style: TextStyle(
                      fontSize: sizeSubtitle,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: spaceBetweenOpcion),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _isAccepted1,
                            onChanged: (bool? value) {
                              setState(() {
                                _isAccepted1 = value ?? false;
                              });
                            },
                            checkColor: Colors.black,
                            fillColor: WidgetStateProperty.all(Colors.white),
                          ),
                          const Text(
                            menOption,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _isAccepted2,
                            onChanged: (bool? value) {
                              setState(() {
                                _isAccepted2 = value ?? false;
                              });
                            },
                            checkColor: Colors.black,
                            fillColor: WidgetStateProperty.all(Colors.white),
                          ),
                          const Text(
                            womenOption,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: spaceBetweenOpcion),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _isAccepted3,
                        onChanged: (bool? value) {
                          setState(() {
                            _isAccepted3 = value ?? false;
                          });
                        },
                        checkColor: Colors.black,
                        fillColor: WidgetStateProperty.all(Colors.white),
                      ),
                      const Text(
                        otherOption,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),

                  const SizedBox(height: spacingSizeBox),
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextField(
                      controller: _controller4,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: emailLogin,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: spacingSizeBox),
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextField(
                      controller: _controller5,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: passwordLogin,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: spacingSizeBox),
                  SizedBox(
                    width: widthForm,
                    height: heightForm,
                    child: TextField(
                      controller: _controller6,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: checkLogin,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: spaceBetweenOptionStart),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text(
                      buttonSend,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
