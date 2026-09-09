import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 25 : 60,
        vertical: 30,
      ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppTheme.border,
          ),
        ),
      ),
      child: isMobile
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MOHAMMAD ANAS',
                  style: TextStyle(
                    color: AppTheme.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'CSE (AIML) • DEVELOPER',
                  style: TextStyle(
                    color: AppTheme.secondaryText,
                    fontSize: 11,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '© 2026 Mohammad Anas',
                  style: TextStyle(
                    color: AppTheme.secondaryText,
                    fontSize: 11,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'MOHAMMAD ANAS',
                  style: TextStyle(
                    color: AppTheme.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'CSE (AIML) • DEVELOPER',
                  style: TextStyle(
                    color: AppTheme.secondaryText,
                    fontSize: 11,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  '© 2026 Mohammad Anas',
                  style: TextStyle(
                    color: AppTheme.secondaryText,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
    );
  }
}