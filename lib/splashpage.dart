import 'package:flutter/material.dart';
import 'package:saving_calculator/mainpage.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState(){
    super.initState();
    //set a timer of 2 second before move to the main page
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainPage()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icon.png', scale: 2),
            Center(child: Text('Saving Goal Calculator')), 
            SizedBox(height: 10),
            Center(child: CircularProgressIndicator()), 
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}