import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rest_api_countries/components/theme_provider.dart';
import 'package:rest_api_countries/constants/text.dart';

class CountryAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CountryAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeState = ref.watch(themesProvider);

    void themeSwitch(bool value) {
      // Check if the current theme mode is dark
      if (themeModeState == ThemeMode.dark) {
        ref.read(themesProvider.notifier).changeTheme(value);
      }
    }

    return AppBar(
      title: const Header2(text: "Where in the world?"),
      actions: [
        TextButton.icon(
          onPressed: () => themeSwitch,
          label: Header3(
              text: themeModeState == ThemeMode.dark
                  ? "Dark Mode"
                  : "Light Mode"),
          icon: Icon(themeModeState == ThemeMode.dark
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
