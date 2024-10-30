import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rest_api_countries/components/theme_provider.dart';
import 'package:rest_api_countries/constants/text.dart';

class CountryAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CountryAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeState = ref.watch(themesProvider);

    void themeSwitch() {
      // Toggle theme based on the current state
      final isDarkMode = themeModeState == ThemeMode.dark;
      ref.read(themesProvider.notifier).changeTheme(!isDarkMode);
    }

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).cardColor,
      title: const Padding(
        padding: EdgeInsets.only(left: 30),
        child: Header2(text: "Where in the world?"),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: TextButton.icon(
            onPressed: themeSwitch,
            label: Header3(
              text:
                  themeModeState == ThemeMode.dark ? "Light Mode" : "Dark Mode",
            ),
            icon: Icon(
              themeModeState == ThemeMode.dark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
