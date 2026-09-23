import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(isMobile ? 25 : 60),
      child: isMobile ? _mobileLayout() : _desktopLayout(),
    );
  }

  Widget _desktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: _heroContent(),
        ),

        const SizedBox(width: 60),

        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white24,
              width: 2,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _mobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _heroContent(),

        const SizedBox(height: 40),

        Container(
          width: 190,
          height: 190,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white24,
              width: 2,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _heroContent() {
    return Column(
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
    );
  }
}