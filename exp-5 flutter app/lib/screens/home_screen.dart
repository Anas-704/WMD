import 'package:flutter/material.dart';

import '../sections/navbar_section.dart';
import '../sections/hero_section.dart';
import '../sections/about_section.dart';
import '../sections/stack_section.dart';
import '../sections/work_section.dart';
import '../sections/journey_section.dart';
import '../sections/contact_section.dart';
import '../sections/footer_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            NavbarSection(
              onHome: () => _scrollTo(_homeKey),
              onAbout: () => _scrollTo(_aboutKey),
              onSkills: () => _scrollTo(_skillsKey),
              onProjects: () => _scrollTo(_projectsKey),
              onContact: () => _scrollTo(_contactKey),
            ),

            Container(
              key: _homeKey,
              child: const HeroSection(),
            ),

            Container(
              key: _aboutKey,
              child: const AboutSection(),
            ),

            Container(
              key: _skillsKey,
              child: const StackSection(),
            ),

            Container(
              key: _projectsKey,
              child: const WorkSection(),
            ),

            const JourneySection(),

            Container(
              key: _contactKey,
              child: const ContactSection(),
            ),

            const FooterSection(),
          ],
        ),
      ),
    );
  }
}