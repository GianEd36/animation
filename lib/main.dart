import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FadeInSplashScreen());
  }
}

class FadeInSplashScreen extends StatelessWidget {
  const FadeInSplashScreen({super.key});

  final String imagePath = "assets/images/furina.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Fade-In'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: AnimatedSplash(
        child: Image.asset('assets/images/furina.jpg'),
        curve: Curves.fastEaseInToSlowEaseOut,
        backgroundColor: Colors.blue,
        type: Transition.fade,
        navigator: ScaleUpSplashScreen(),
        durationInSeconds: 3,
      ),
    );
  }
}

class ScaleUpSplashScreen extends StatelessWidget {
  const ScaleUpSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Scale-Up'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: AnimatedSplash(
        child: Image.asset('assets/images/fischl1.jpg'),
        curve: Curves.fastEaseInToSlowEaseOut,
        backgroundColor: Colors.purple,
        type: Transition.scale,
        navigator: RotationSplashScreen(),
        durationInSeconds: 3,
      ),
    );
  }
}

class RotationSplashScreen extends StatelessWidget {
  const RotationSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Rotation Splash Screen'),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      body: AnimatedSplash(
        child: Image.asset('assets/images/paimon1.jpg'),
        curve: Curves.fastEaseInToSlowEaseOut,
        backgroundColor: Colors.grey,
        type: Transition.rotate,
        navigator: MainScreen(),
        durationInSeconds: 3,
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => FadeInSplashScreen()));
          },
          child: Text('Try again?'),
        ),
      ),
    );
  }
}
