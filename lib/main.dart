import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: const Text('Student Profile'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 55),
              ),
              const SizedBox(height: 12),
              const Text(
                'Juan Dela Cruz',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const Text('BS Information Technology'),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(width: 10),
                          Expanded(child: Text('student@email.com')),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10),
                          Text('09XX-XXX-XXXX'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Text('Laguna, Philippines'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(child: _StatBox('5', 'Projects')),
                  SizedBox(width: 8),
                  Expanded(child: _StatBox('8', 'Skills')),
                  SizedBox(width: 8),
                  Expanded(child: _StatBox('6', 'Subjects')),
                ],
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Skills',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          Chip(label: Text('Flutter')),
                          Chip(label: Text('Dart')),
                          Chip(label: Text('HTML')),
                          Chip(label: Text('CSS')),
                          Chip(label: Text('UI/UX')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('View Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final String number;
  final String label;

  const _StatBox(this.number, this.label);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Text(
              number,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
