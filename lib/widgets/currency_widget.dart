import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_web_app/utils/colors.dart';
import 'package:marlo_web_app/utils/sizedbox.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: kWhite),
      height: 152,
      width: 168,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.safedinar.com/media/currencies/GBP/flag.png'),
                  radius: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 35, left: 20),
                  child: const Text(
                    'GBP',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            kHeight10,
            Text(
              '15,256,486.00',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            kHeight5,
            Text(
              'Main',
              style: GoogleFonts.lato(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
