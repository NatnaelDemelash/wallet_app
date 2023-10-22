// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LittleExpenseCard extends StatelessWidget {
  final color;
  final String expenseType;
  final int amount;

  const LittleExpenseCard(
      {super.key,
      required this.color,
      required this.expenseType,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Text(
              expenseType,
              style: GoogleFonts.poppins(
                  fontSize: 18, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 1),
            Text(
              '\$' + amount.toString(),
              style: GoogleFonts.poppins(
                  fontSize: 25, fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }
}
