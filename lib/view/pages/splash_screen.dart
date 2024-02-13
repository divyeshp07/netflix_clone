import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_netflix/view/pages/login_screen.dart';

class LogoNetflix extends StatelessWidget {
  const LogoNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    // for automatically next page
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/lottie/Animation - 1700819530556.json',
            fit: BoxFit.cover),
      ),
    );
  }
}
