import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBanner extends StatelessWidget {
  final String textTop;
  final String textBottom;

  final int backGroundColor;
  const CustomBanner(
      {super.key,
      required this.textBottom,
      required this.textTop,
      required this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
            color: Color(backGroundColor),
            border: const Border.fromBorderSide(BorderSide(width: 1)),
            borderRadius: const BorderRadius.all(Radius.circular(24))),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 16),
          child: Column(children: [
            Row(
              children: [
                Text(
                  textTop,
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold, fontSize: 32),
                ),
                const SizedBox(
                  width: 70,
                ),
                const CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.black,
                  child: Text(
                    '...',
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textBottom,
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
