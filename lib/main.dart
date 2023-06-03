import 'package:flutter/material.dart';
import '/mainpage.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      )
  );
}

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 4),(){
          Navigator.push(
          context, MaterialPageRoute(builder: (context) => ArrayWidget())
          );
        }
    );
    return Scaffold(
      body: Container(
        color: Color(0xFF454242),
        child: Center(
          child: Image(
              image: AssetImage('images/ssfas-modified.png')
          ),
        ),
      ),
    );
  }
}



