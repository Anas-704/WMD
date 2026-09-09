import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 25 : 60,
        vertical: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          const Text(
            '01 — ABOUT',
            style: TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 30),

          // Heading
          Text(
            'ABOUT ME',
            style: TextStyle(
              color: AppTheme.primaryText,
              fontSize: isMobile ? 40 : 55,
              fontWeight: FontWeight.bold,
              letterSpacing: -2,
            ),
          ),

          const SizedBox(height: 30),

          // Content
          SizedBox(
            width: isMobile ? double.infinity : 800,
            child: const Text(
              'I am a CSE (AIML) student and developer interested in '
              'building practical software solutions. I work with web '
              'development, artificial intelligence, machine learning '
              'and modern programming technologies.\n\n'
              'I enjoy learning by building projects and solving '
              'real-world problems through technology.',
              style: TextStyle(
                color: AppTheme.secondaryText,
                fontSize: 18,
                height: 1.7,
              ),
            ),
          ),

          const SizedBox(height: 45),

          // Basic information
          Wrap(
            spacing: 60,
            runSpacing: 25,
            children: const [
              _InfoItem(
                title: 'FIELD',
                value: 'CSE (AIML)',
              ),
              _InfoItem(
                title: 'FOCUS',
                value: 'Software Development',
              ),
              _InfoItem(
                title: 'INTEREST',
                value: 'AI / ML',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String title;
  final String value;

  const _InfoItem({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppTheme.secondaryText,
            fontSize: 11,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: AppTheme.primaryText,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}