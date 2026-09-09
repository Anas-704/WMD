import 'package:flutter/material.dart';
import '../models/project_model.dart';
import '../theme/app_theme.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppTheme.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.type,
            style: const TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            project.title,
            style: const TextStyle(
              color: AppTheme.primaryText,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            project.description,
            style: const TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 16,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            project.technologies,
            style: const TextStyle(
              color: AppTheme.primaryText,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 20),

          OutlinedButton(
            onPressed: () {},
            child: const Text('VIEW PROJECT'),
          ),
        ],
      ),
    );
  }
}