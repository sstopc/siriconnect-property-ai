import 'package:flutter/material.dart';

class OwnerInformationCard extends StatelessWidget {
  const OwnerInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              'Owner Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Ramesh Kumar'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+91 9876543210'),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Available 9 AM - 7 PM'),
            ),
          ],
        ),
      ),
    );
  }
}