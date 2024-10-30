import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rest_api_countries/constants/text.dart';
import 'package:rest_api_countries/provider/search_provider.dart';

class CountryFilter extends ConsumerWidget {
  const CountryFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uniqueRegions = ref.watch(uniqueRegionsProvider);
    final selectedRegion = ref.watch(selectedRegionProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).highlightColor),
        color: Theme.of(context).cardColor,
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: const SizedBox(),
        value: selectedRegion,
        hint: const Header4(text: "Filter by Region"),
        items: uniqueRegions.map((region) {
          return DropdownMenuItem<String>(
            value: region,
            child: Header4(text: region),
          );
        }).toList(),
        onChanged: (newRegion) {
          if (newRegion != null) {
            ref.read(selectedRegionProvider.notifier).state = newRegion;
          }
        },
      ),
    );
  }
}
