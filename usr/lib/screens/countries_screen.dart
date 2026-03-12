import 'package:flutter/material.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for a country directory
    final countries = [
      {'name': 'United States', 'flag': '🇺🇸', 'region': 'North America', 'gdp': '\$25.4T', 'status': 'Superpower'},
      {'name': 'China', 'flag': '🇨🇳', 'region': 'Asia', 'gdp': '\$17.9T', 'status': 'Superpower'},
      {'name': 'Japan', 'flag': '🇯🇵', 'region': 'Asia', 'gdp': '\$4.2T', 'status': 'Major Power'},
      {'name': 'Germany', 'flag': '🇩🇪', 'region': 'Europe', 'gdp': '\$4.0T', 'status': 'Major Power'},
      {'name': 'India', 'flag': '🇮🇳', 'region': 'Asia', 'gdp': '\$3.4T', 'status': 'Emerging Power'},
      {'name': 'United Kingdom', 'flag': '🇬🇧', 'region': 'Europe', 'gdp': '\$3.0T', 'status': 'Major Power'},
      {'name': 'France', 'flag': '🇫🇷', 'region': 'Europe', 'gdp': '\$2.7T', 'status': 'Major Power'},
      {'name': 'Brazil', 'flag': '🇧🇷', 'region': 'South America', 'gdp': '\$1.9T', 'status': 'Regional Power'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Directory'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onTap: () {},
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: countries.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final country = countries[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Text(
              country['flag']!,
              style: const TextStyle(fontSize: 32),
            ),
            title: Text(
              country['name']!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(country['region']!),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        country['status']!,
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('GDP', style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text(
                  country['gdp']!,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
