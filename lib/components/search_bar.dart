import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rest_api_countries/provider/search_provider.dart';

class CountrySearchBar extends ConsumerWidget {
  final double width;

  const CountrySearchBar({super.key, required this.width});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextField(
        onChanged: (value) =>
            ref.read(searchCountryProvider.notifier).updateSearch(value),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search for a country...',
          hintStyle:
              GoogleFonts.nunitoSans(color: Theme.of(context).highlightColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).cardColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
