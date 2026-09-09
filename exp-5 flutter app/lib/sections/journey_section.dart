import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class JourneySection extends StatelessWidget {
  const JourneySection({super.key});

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
          const Text(
            '04 — JOURNEY',
            style: TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 30),

          Text(
            'EDUCATION',
            style: TextStyle(
              color: AppTheme.primaryText,
              fontSize: isMobile ? 40 : 55,
              fontWeight: FontWeight.bold,
              letterSpacing: -2,
            ),
          ),

          const SizedBox(height: 45),

          _JourneyItem(
            year: '2024 — PRESENT',
            title: 'B.E. Computer Science & Engineering',
            subtitle: 'Artificial Intelligence & Machine Learning',
            description:
                'Currently pursuing engineering with a focus on '
                'software development, artificial intelligence and '
                'machine learning.',
          ),

          const SizedBox(height: 35),

          _JourneyItem(
            year: 'CURRENT',
            title: 'Building & Learning',
            subtitle: 'Projects • Development • AI/ML',
            description:
                'Learning through practical projects and exploring '
                'modern technologies by building real-world applications.',
          ),
        ],
      ),
    );
  }
}

class _JourneyItem extends StatelessWidget {
  final String year;
  final String title;
  final String subtitle;
  final String description;

  const _JourneyItem({
    required this.year,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppTheme.border,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            year,
            style: const TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            title,
            style: const TextStyle(
              color: AppTheme.primaryText,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            subtitle,
            style: const TextStyle(
              color: AppTheme.primaryText,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            description,
            style: const TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 15,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}