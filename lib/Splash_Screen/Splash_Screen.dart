import "dart:async";
import "package:flutter/material.dart";
import "package:wscubetech_app_ui/SignUp_Password_Screens/Sign_In.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SignIn();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blue.shade700,
              Colors.blue.shade600,
              Colors.blue.shade500,
              Colors.blue.shade400,
              Colors.blue.shade300,
              Colors.blue.shade200,
              Colors.blue.shade100,
              Colors.blue.shade50,
            ],
          ),
        ),
        child: const Center(
          child: Text(
            "Splash Screen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45.0,
              color: Colors.white,
              fontFamily: "FontsOne",
            ),
          ),
        ),
      ),
    );
  }
}
