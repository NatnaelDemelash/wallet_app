import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 380,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(52, 152, 219, 1),
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance'.toUpperCase(),
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              '\$4,258',
              style: GoogleFonts.poppins(fontSize: 32, color: Colors.white),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card no
                Text(
                  '*****4578',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                ),

                // Card exp date
                Text(
                  '10/25',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
