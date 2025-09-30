import 'package:flutter/material.dart';
import '../widgets/plan_journey_card.dart';
import '../widgets/assistant_card.dart';
import '../widgets/app_header.dart';
import '../app_theme.dart';
import './track_parcel_page.dart';
import './track_bus_page.dart';
import './settings_page.dart';
import './profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Colors pulled from theme via widgets; keep local color usage minimal.
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PlanJourneyCard(onSearch: () {}),
            const SizedBox(height: 16),
            AssistantCard(onTapSpeak: () {}),
          ],
        ),
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Color primaryBlue = AppTheme.primaryBlue;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppHeader(title: 'MeriBus'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomePage(),
          TrackParcelPage(),
          TrackBusPage(),
          SettingsPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        selectedItemColor: primaryBlue,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.inventory_2_outlined), label: 'Track Parcel'),
          BottomNavigationBarItem(
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(Icons.directions_bus_filled_outlined),
                Positioned(
                  right: -6,
                  top: -6,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE94256),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            label: 'Track Bus',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Settings'),
          const BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

