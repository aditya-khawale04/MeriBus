import 'package:flutter/material.dart';
import '../app_theme.dart';

class PlanJourneyCard extends StatelessWidget {
  final VoidCallback onSearch;
  const PlanJourneyCard({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = Theme.of(context).inputDecorationTheme.enabledBorder as OutlineInputBorder;

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
              children: const [
                Icon(Icons.place_outlined, color: Colors.black87),
                SizedBox(width: 8),
                Text('Plan Your Journey', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Start Location', style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter start location',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send_rounded, size: 20),
                  onPressed: onSearch,
                ),
                filled: true,
                fillColor: const Color(0xFFF4F6FA),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                enabledBorder: border,
                focusedBorder: border.copyWith(borderSide: const BorderSide(color: AppTheme.primaryBlue)),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Destination', style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter destination',
                filled: true,
                fillColor: const Color(0xFFF4F6FA),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                enabledBorder: border,
                focusedBorder: border.copyWith(borderSide: const BorderSide(color: AppTheme.primaryBlue)),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: onSearch,
                    icon: const Icon(Icons.search, color: Colors.white),
                    label: const Text('Search Buses', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const _OutlinedRoundIcon(icon: Icons.mic_none_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _OutlinedRoundIcon extends StatelessWidget {
  final IconData icon;
  const _OutlinedRoundIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE7EAF3)),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Icon(Icons.mic_none_rounded, color: Colors.black87),
      ),
    );
  }
}


