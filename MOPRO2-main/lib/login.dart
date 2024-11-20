import 'package:flutter/cupertino.dart';
import 'dashboard.dart'; // Pastikan nama file sesuai dengan lokasi file DashboardPage

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email == 'muklis' && password == '123') {
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => DashboardPage(username: email),
        ),
      );
    } else {
      showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: const Text('Login Gagal'),
          content: const Text('Username atau password salah.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/domba.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Login Form
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: CupertinoColors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: CupertinoColors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo
                  Image.asset(
                    'images/logo3.png',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 20),
                  // Email Input
                  CupertinoTextField(
                    controller: _emailController,
                    placeholder: 'Email atau nama pengguna',
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'TimesNewRoman',
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 51, 51, 75)
                          .withOpacity(0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Password Input
                  CupertinoTextField(
                    controller: _passwordController,
                    placeholder: 'Kata sandi',
                    obscureText: true,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'TimesNewRoman', // Font baru
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 66, 66, 94)
                          .withOpacity(0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Login Button
                  CupertinoButton.filled(
                    onPressed: _login,
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        fontFamily: 'TimesNewRoman', // Font baru
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Forgot Password
                  GestureDetector(
                    onTap: () {
                      // Action untuk lupa password
                    },
                    child: const Text(
                      'Lupa kata sandi?',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 12,
                        fontFamily: 'TimesNewRoman', // Font baru
                      ),
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
