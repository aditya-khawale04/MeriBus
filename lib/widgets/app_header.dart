import 'package:flutter/material.dart';
import '../app_theme.dart';

class AppHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onCalendarTap;

  const AppHeader({super.key, required this.title, this.onCalendarTap});

  @override
  Widget build(BuildContext context) {
    final Color primaryBlue = AppTheme.primaryBlue;
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 12, top: 16, bottom: 16),
      decoration: BoxDecoration(color: primaryBlue, boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 8, offset: const Offset(0, 2)),
      ]),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const Spacer(),
          const _LanguageChip(),
          const SizedBox(width: 8),
          _IconAction(icon: Icons.calendar_today_rounded, onTap: onCalendarTap ?? () {}),
        ],
      ),
    );
  }
}

class _LanguageChip extends StatelessWidget {
  const _LanguageChip();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Row(
        children: const [
          Text('US', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
          SizedBox(width: 4),
          Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 18),
        ],
      ),
    );
  }
}

class _IconAction extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _IconAction({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.12),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon, color: Colors.white, size: 18),
        ),
      ),
    );
  }
}


