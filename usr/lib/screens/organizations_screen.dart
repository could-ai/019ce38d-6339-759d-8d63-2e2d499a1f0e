import 'package:flutter/material.dart';

class OrganizationsScreen extends StatelessWidget {
  const OrganizationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for international organizations
    final orgs = [
      {
        'name': 'United Nations (UN)',
        'abbr': 'UN',
        'desc': 'Intergovernmental organization aimed at maintaining international peace and security, developing friendly relations among nations, and achieving international cooperation.',
        'members': '193',
        'founded': '1945',
      },
      {
        'name': 'European Union (EU)',
        'abbr': 'EU',
        'desc': 'Supranational political and economic union of 27 member states that are located primarily in Europe.',
        'members': '27',
        'founded': '1993',
      },
      {
        'name': 'North Atlantic Treaty Organization',
        'abbr': 'NATO',
        'desc': 'Intergovernmental military alliance between 32 member states, implementing the North Atlantic Treaty.',
        'members': '32',
        'founded': '1949',
      },
      {
        'name': 'Association of Southeast Asian Nations',
        'abbr': 'ASEAN',
        'desc': 'Political and economic union of 10 member states in Southeast Asia, promoting intergovernmental cooperation.',
        'members': '10',
        'founded': '1967',
      },
      {
        'name': 'World Trade Organization',
        'abbr': 'WTO',
        'desc': 'Intergovernmental organization that regulates and facilitates international trade between nations.',
        'members': '164',
        'founded': '1995',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('International Organizations'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orgs.length,
        itemBuilder: (context, index) {
          final org = orgs[index];
          return Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                        child: Text(
                          org['abbr']!,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          org['name']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Divider(height: 1),
                  ),
                  Text(
                    org['desc']!,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _buildStatChip(context, Icons.group, '${org['members']} Members'),
                      const SizedBox(width: 8),
                      _buildStatChip(context, Icons.history, 'Est. ${org['founded']}'),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatChip(BuildContext context, IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.grey.shade700),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
