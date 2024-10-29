import 'package:flutter/material.dart';

class CountryGrid extends StatefulWidget {
  final int crossAxisCount;

  const CountryGrid({super.key, this.crossAxisCount = 4});

  @override
  State<CountryGrid> createState() => _CountryGridState();
}

class _CountryGridState extends State<CountryGrid> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
