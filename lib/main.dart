import 'package:flutter/material.dart';
import 'package:testes/home.dart';

void main() {
    runApp( const MyApp());
}
class MyApp extends MaterialApp {
  const MyApp({super.key}) : super(home: const Home());
}