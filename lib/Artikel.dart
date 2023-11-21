import 'package:flutter/material.dart';

class Artikel extends StatefulWidget {
  const Artikel({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  State<Artikel> createState() => _BentukState();
}

class _BentukState extends State<Artikel> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
