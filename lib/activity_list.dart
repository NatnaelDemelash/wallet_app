import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityList extends StatelessWidget {
  final String iconPath;
  final String activityName;
  final String subText;

  const ActivityList({
    super.key,
    required this.activityName,
    required this.iconPath,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(198, 222, 216, 191),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(iconPath),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activityName,
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  subText,
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.grey.shade600),
                )
              ],
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
