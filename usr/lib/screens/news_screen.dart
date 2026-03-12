import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for international relations news
    final news = [
      {
        'title': 'Global Climate Summit Concludes with New Targets',
        'date': 'Today',
        'category': 'Environment',
        'icon': Icons.eco,
      },
      {
        'title': 'Comprehensive Trade Agreement Signed in Asia-Pacific',
        'date': 'Yesterday',
        'category': 'Economy',
        'icon': Icons.trending_up,
      },
      {
        'title': 'Security Council Resolution Passed Unanimously',
        'date': '2 days ago',
        'category': 'Security',
        'icon': Icons.security,
      },
      {
        'title': 'Bilateral Diplomatic Talks Resume in Geneva',
        'date': '3 days ago',
        'category': 'Diplomacy',
        'icon': Icons.handshake,
      },
      {
        'title': 'International Aid Package Approved for Developing Nations',
        'date': '1 week ago',
        'category': 'Humanitarian',
        'icon': Icons.volunteer_activism,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Updates'),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          final item = news[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 1,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(item['icon'] as IconData, size: 20, color: Theme.of(context).colorScheme.primary),
                        const SizedBox(width: 8),
                        Text(
                          item['category'] as String,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          item['date'] as String,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      item['title'] as String,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
