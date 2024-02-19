import 'package:flutter/material.dart';
import 'package:login_busbanz/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 238, 238, 238),
            ),
            Image.asset('assets/image/header.png'),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/image/logo.png',
                    ),
                    const ContainerSection(),
                    const _ChangeRegister(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//todo Texto Para Registrarse
class _ChangeRegister extends StatelessWidget {
  const _ChangeRegister();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '¿No tienes una cuenta? ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Regístrate',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 39, 155, 214),
              fontWeight: FontWeight.w500,
              letterSpacing: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}
