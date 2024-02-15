import 'package:flutter/material.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image/logo.png'),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 6),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            const Text(
                              'Iniciar Sesión',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 14, 33, 51),
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const TextField(label: 'Correo Electrónico'),
                            const SizedBox(height: 16),
                            const TextField(label: 'Contraseña'),
                            const SizedBox(height: 16),
                            Container(
                              height: 48,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 253, 194, 32),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 2),
                                    blurRadius: 2,
                                    spreadRadius: -2,
                                  ),
                                ],
                              ),
                              child: const Text(
                                'Iniciar Sesión',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 14, 33, 51),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 24),
                              child: Text(
                                '¿Olvidaste Tu Contraseña?',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 39, 155, 214),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {
  final String label;
  // final bool icon;
  const TextField({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 246, 246, 246),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2,
            spreadRadius: -2,
          ),
        ],
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black26,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
