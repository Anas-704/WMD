import 'package:flutter/material.dart';
import '../models/project_model.dart';
import '../widgets/project_card.dart';
import '../theme/app_theme.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    const projects = [
      Project(
        title: 'Academic Management System',
        description:
            'A department-level academic platform designed to manage '
            'students, teachers, attendance, marks and learning resources.',
        technologies:
            'Flutter • Java • Spring Boot • Firebase',
        type: 'ACADEMIC SYSTEM',
      ),
      Project(
        title: 'AI / ML Projects',
        description:
            'Machine learning projects focused on data analysis, '
            'statistical concepts and practical ML workflows.',
        technologies:
            'Python • Pandas • NumPy • Scikit-learn',
        type: 'AI / MACHINE LEARNING',
      ),
      Project(
        title: 'WMD Experiments',
        description:
            'Web and mobile development experiments covering React, '
            'Flutter and API testing.',
        technologies:
            'React • Flutter • JavaScript • Postman',
        type: 'WEB & MOBILE DEVELOPMENT',
      ),
    ];

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
            '03 — WORK',
            style: TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 30),

          Text(
            'SELECTED PROJECTS',
            style: TextStyle(
              color: AppTheme.primaryText,
              fontSize: isMobile ? 38 : 55,
              fontWeight: FontWeight.bold,
              letterSpacing: -2,
            ),
          ),

          const SizedBox(height: 40),

          ...projects.map(
            (project) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ProjectCard(project: project),
            ),
          ),
        ],
      ),
    );
  }
}