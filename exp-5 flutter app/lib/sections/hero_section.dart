import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'CSE (AIML) STUDENT',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            'MOHAMMAD ANAS',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Developer • AI/ML • Web',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            'I build software projects and explore '
            'AI, machine learning and modern web technologies.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 35),

          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('VIEW PROJECTS'),
              ),

              const SizedBox(width: 15),

              OutlinedButton(
                onPressed: () {},
                child: const Text('GITHUB'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}