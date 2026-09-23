import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class NavbarSection extends StatelessWidget {
  final VoidCallback onHome;
  final VoidCallback onAbout;
  final VoidCallback onSkills;
  final VoidCallback onProjects;
  final VoidCallback onContact;

  const NavbarSection({
    super.key,
    required this.onHome,
    required this.onAbout,
    required this.onSkills,
    required this.onProjects,
    required this.onContact,
  });

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
        color: AppTheme.background,
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
                _NavItem(
                  title: 'HOME',
                  onTap: onHome,
                ),
                _NavItem(
                  title: 'ABOUT',
                  onTap: onAbout,
                ),
                _NavItem(
                  title: 'SKILLS',
                  onTap: onSkills,
                ),
                _NavItem(
                  title: 'PROJECTS',
                  onTap: onProjects,
                ),
                _NavItem(
                  title: 'CONTACT',
                  onTap: onContact,
                ),
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

class _NavItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const _NavItem({
    required this.title,
    required this.onTap,
  });

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 150),
            style: TextStyle(
              color: isHovered
                  ? AppTheme.primaryText
                  : AppTheme.secondaryText,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}