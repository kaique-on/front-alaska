import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({super.key});

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  final TextEditingController texto = TextEditingController(text: 'Edite este texto');

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          decoration: const InputDecoration(
            border: InputBorder.none, // Remover borda
          ),
          controller: texto, // Inicializar texto
        ),
      ),
      );
  }
}