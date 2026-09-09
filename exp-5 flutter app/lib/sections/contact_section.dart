import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 25 : 60,
        vertical: 90,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '05 — CONTACT',
            style: TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 30),

          Text(
            'LET\'S CONNECT',
            style: TextStyle(
              color: AppTheme.primaryText,
              fontSize: isMobile ? 40 : 55,
              fontWeight: FontWeight.bold,
              letterSpacing: -2,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Interested in working together or discussing a project?',
            style: TextStyle(
              color: AppTheme.secondaryText,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 40),

          // EMAIL
          _ContactItem(
            label: 'EMAIL',
            value: 'your-email@example.com',
          ),

          const SizedBox(height: 25),

          // GITHUB
          _ContactItem(
            label: 'GITHUB',
            value: 'github.com/Anas-704',
          ),

          const SizedBox(height: 25),

          // LINKEDIN
          const _ContactItem(
            label: 'LINKEDIN',
            value: 'LinkedIn Profile',
          ),
        ],
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final String label;
  final String value;

  const _ContactItem({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        bottom: 18,
      ),
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
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                color: AppTheme.secondaryText,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),

          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: AppTheme.primaryText,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}