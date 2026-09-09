import 'package:flutter/material.dart';

import '../sections/navbar_section.dart';
import '../sections/hero_section.dart';
import '../sections/about_section.dart';
import '../sections/stack_section.dart';
import '../sections/work_section.dart';
import '../sections/journey_section.dart';
import '../sections/contact_section.dart';
import '../sections/footer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavbarSection(),
            HeroSection(),
            AboutSection(),
            StackSection(),
            WorkSection(),
            JourneySection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}