import 'package:flutter/material.dart';
import 'package:rest_api_countries/screens/desktop_screen.dart';
import 'package:rest_api_countries/screens/mobile_screen.dart';

class CountryAppLayout extends StatelessWidget {
  const CountryAppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const CountryMobileScreen();
        } else {
          return const CountryDesktopScreen();
        }
      },
    );
  }
}
