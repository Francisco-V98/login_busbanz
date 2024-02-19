import 'package:flutter/material.dart';
import 'package:login_busbanz/widgets/widgets.dart';

class ContainerSection extends StatelessWidget {
  const ContainerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            child: const Column(
              children: [
                SizedBox(height: 24),
                _TitleSection(),
                SizedBox(height: 16),
                TextfienldPro(placeholder: 'Correo Electrónico'),
                // Textfield(label: 'Correo Electrónico'),
                SizedBox(height: 16),
                TextfienldPro(placeholder: 'Contraseña'),
                // Textfield(label: 'Contraseña'),
                SizedBox(height: 16),
                ButtonPrimaryPro(text: 'Iniciar Sesión'),
                _ForgotPassword(),
                
                // ButtonPrimaryGhost(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//todo Titulio 'Iniciar Sesion'
class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Iniciar Sesión',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        color: Color.fromARGB(255, 14, 33, 51),
        letterSpacing: 0.5,
      ),
    );
  }
}

//todo text 'olvidaste tu contrasena'
class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 24),
      child: InkWell(
        onTap: () {},
        child: const Text(
          '¿Olvidaste Tu Contraseña?',
          style: TextStyle(
            color: Color.fromARGB(255, 39, 155, 214),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
