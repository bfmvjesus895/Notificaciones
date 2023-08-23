import 'package:flutter/material.dart';
import 'package:jesus_flutter/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE040FB),
              Color(0xFFF48FB1),
              Color(0xFFFFE57F),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Image.asset('assets/logo.png',
                height: 300.0,
                width: 300.0,
          ),
            Column(
              children: [
          Text("Bienvenido presione el boton para comenzar",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
          ),
              ],
            ),
            Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
          ElevatedButton(
          onPressed: () {
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
          },
          child: Text(
            "Comenzar",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        ])]
        ),
      ),
    );
  }
}