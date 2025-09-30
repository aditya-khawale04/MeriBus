import 'package:flutter/material.dart';
import '../app_theme.dart';

class AssistantCard extends StatelessWidget {
  final VoidCallback onTapSpeak;
  const AssistantCard({super.key, required this.onTapSpeak});

  @override
  Widget build(BuildContext context) {
    final Color primaryBlue = AppTheme.primaryBlue;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: primaryBlue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.smart_toy_outlined, color: primaryBlue),
                ),
                const SizedBox(width: 12),
                const Text('AI Assistant', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9F6EC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text('LIVE', style: TextStyle(color: Color(0xFF1F8B4C), fontWeight: FontWeight.w800, fontSize: 12)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Ask me anything about bus schedules...',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: onTapSpeak,
                icon: const Icon(Icons.headphones_rounded, color: Colors.white),
                label: const Text('Tap to speak', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBlue,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text('Example questions:', style: TextStyle(fontSize: 12, color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}


