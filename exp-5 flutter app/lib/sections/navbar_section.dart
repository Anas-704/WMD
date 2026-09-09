import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class NavbarSection extends StatelessWidget {
  const NavbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 25 : 60,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppTheme.border,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'MOHAMMAD ANAS',
            style: TextStyle(
              color: AppTheme.primaryText,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),

          if (!isMobile)
            Row(
              children: [
                _NavItem(title: 'HOME'),
                _NavItem(title: 'ABOUT'),
                _NavItem(title: 'SKILLS'),
                _NavItem(title: 'PROJECTS'),
                _NavItem(title: 'CONTACT'),
              ],
            )
          else
            const Icon(
              Icons.menu,
              color: AppTheme.primaryText,
            ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;

  const _NavItem({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Text(
        title,
        style: const TextStyle(
          color: AppTheme.secondaryText,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 1,
        ),
      ),
    );
  }
}