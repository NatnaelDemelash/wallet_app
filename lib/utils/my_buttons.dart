import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String imagePath;
  final String buttonName;

  const MyButton(
      {super.key, required this.imagePath, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40,
                  spreadRadius: 2,
                )
              ]),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Image.asset(imagePath),
              ),
              const SizedBox(height: 15),
              Text(
                buttonName,
                style: GoogleFonts.poppins(
                    fontSize: 16, color: Colors.grey.shade600),
              )
            ],
          )),
        ),
      ],
    );
  }
}
