import 'package:flutter/material.dart';
import 'screens/screens.dart'; //Trae las pantallas

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        //Ruta de las pantallas
        'login': ((context) => const LoginScreen()),
      },
    );
  }
}
