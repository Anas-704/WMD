import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key});

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
            '02 — SKILLS',
            style: TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 30),

          Text(
            'TECH STACK',
            style: TextStyle(
              color: AppTheme.primaryText,
              fontSize: isMobile ? 40 : 55,
              fontWeight: FontWeight.bold,
              letterSpacing: -2,
            ),
          ),

          const SizedBox(height: 40),

          _SkillCategory(
            title: 'PROGRAMMING',
            skills: const [
              'Java',
              'Python',
              'Dart',
              'JavaScript',
            ],
          ),

          const SizedBox(height: 30),

          _SkillCategory(
            title: 'WEB DEVELOPMENT',
            skills: const [
              'HTML',
              'CSS',
              'JavaScript',
              'React',
              'Flutter',
            ],
          ),

          const SizedBox(height: 30),

          _SkillCategory(
            title: 'AI / MACHINE LEARNING',
            skills: const [
              'Python',
              'Machine Learning',
              'Data Analysis',
            ],
          ),

          const SizedBox(height: 30),

          _SkillCategory(
            title: 'TOOLS & TECHNOLOGIES',
            skills: const [
              'Git',
              'GitHub',
              'Firebase',
              'MySQL',
              'Spring Boot',
            ],
          ),
        ],
      ),
    );
  }
}

class _SkillCategory extends StatelessWidget {
  final String title;
  final List<String> skills;

  const _SkillCategory({
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 25),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppTheme.border,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 220,
            child: Text(
              title,
              style: const TextStyle(
                color: AppTheme.secondaryText,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),

          Expanded(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: skills.map((skill) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppTheme.border,
                    ),
                  ),
                  child: Text(
                    skill,
                    style: const TextStyle(
                      color: AppTheme.primaryText,
                      fontSize: 14,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}