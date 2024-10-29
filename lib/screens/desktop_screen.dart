import 'package:flutter/material.dart';
import 'package:rest_api_countries/components/app_bar.dart';

class CountryDesktopScreen extends StatelessWidget {
  const CountryDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CountryAppBar(),
      body: const Column(),
    );
  }
}
