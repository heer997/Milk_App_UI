import "package:flutter/material.dart";
import "package:wscubetech_app_ui/Splash_Screen/Splash_Screen.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WscubeTech APP UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class WscubeTechApp extends StatefulWidget {
  const WscubeTechApp({super.key});
  @override
  State<WscubeTechApp> createState()
  {
    return WscubeTechAppState();
  }
}
class WscubeTechAppState extends State<WscubeTechApp>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomeScreen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(),
    );
  }
}
