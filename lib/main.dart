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
        backgroundColor: const Color(0xFFF3EBDD),
        appBar: AppBar(
          title: const Text('Student Profile'),
          backgroundColor: const Color(0xFF2D5A3D),
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF2D5A3D), width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 52,
                      backgroundColor: Color(0xFFE5EBDD),
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Kiervin P. Dixon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2D5A3D),
                  ),
                ),
                const Text(
                  'BS Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF616161),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  color: const Color(0xFFFFFBF2),
                  surfaceTintColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: const [
                        Row(
                          children: [
                            Icon(Icons.email, color: Color(0xFF2D5A3D)),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'kiervindixon@student.trimexcolleges.edu.ph',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.phone, color: Color(0xFF2D5A3D)),
                            SizedBox(width: 10),
                            Expanded(child: Text('0991-219-7679')),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Color(0xFF2D5A3D)),
                            SizedBox(width: 10),
                            Expanded(child: Text('Laguna, Philippines')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Expanded(child: _StatBox('12', 'Projects')),
                    SizedBox(width: 8),
                    Expanded(child: _StatBox('5', 'Skills')),
                    SizedBox(width: 8),
                    Expanded(child: _StatBox('8', 'Subjects')),
                  ],
                ),

                const SizedBox(height: 16),
                Card(
                  color: const Color(0xFFFFFBF2),
                  surfaceTintColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D5A3D),
                          ),
                        ),
                        SizedBox(height: 10),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            Chip(
                              backgroundColor: Color(0xFFE5EBDD),
                              label: Text('Flutter'),
                            ),
                            Chip(
                              backgroundColor: Color(0xFFE5EBDD),
                              label: Text('Dart'),
                            ),
                            Chip(
                              backgroundColor: Color(0xFFE5EBDD),
                              label: Text('HTML'),
                            ),
                            Chip(
                              backgroundColor: Color(0xFFE5EBDD),
                              label: Text('CSS'),
                            ),
                            Chip(
                              backgroundColor: Color(0xFFE5EBDD),
                              label: Text('PHP'),
                            ),
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2D5A3D),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('View Profile'),
                  ),
                ),
              ],
            ),
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
      color: const Color(0xFFFFFBF2),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xFFD3DCCB), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Text(
              number,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D5A3D),
              ),
            ),
            Text(label, style: const TextStyle(color: Color(0xFF616161))),
          ],
        ),
      ),
    );
  }
}
