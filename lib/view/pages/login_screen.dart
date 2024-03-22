import 'package:flutter/material.dart';
import 'package:my_netflix/view/pages/home_screen.dart';
import 'package:my_netflix/view/widgets/logintextfeild_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Center(
              child: Container(
                width: 350,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const TextFieldWidget(
                    labelText: 'Username',
                    hintText: 'Enter your username',
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(height: 30),
                  TextFieldWidget(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icons.lock,
                    suffixIcon: InkWell(
                      onTap: () {
                        // Implement forgot password functionality
                      },
                      child: const Icon(Icons.help),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieApp(),
                            ));
                      },
                      child: const Text('Login')),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/pngtree/—Pngtree—google internet icon vector_12256707.png',
                        width: 34,
                        height: 34,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Implement already have an account functionality
                    },
                    child: const Text('Already have an account? Sign in'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
