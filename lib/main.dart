import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rest_api_countries/components/theme_provider.dart';
import 'package:rest_api_countries/constants/colors.dart';
import 'package:rest_api_countries/screens/desktop_screen.dart';
import 'package:rest_api_countries/screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeState = ref.watch(themesProvider);

    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeModeState,
      debugShowCheckedModeBanner: false,
      home: const CountryAppLayout(),
    );
  }
}
