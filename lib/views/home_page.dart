import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_web_app/utils/colors.dart';
import 'package:marlo_web_app/utils/sizedbox.dart';
import 'package:marlo_web_app/widgets/currency_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'MARLO',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 7),
            ),
          ],
        ),
        leading: Container(
            margin: const EdgeInsets.only(left: 20),
            child: Image.asset('assets/1567501252851-removebg-preview.png')),
        backgroundColor: const Color(0xFF242B4D),
        elevation: 0,
        actions: [
          kWidth20,
          Text(
            'MARLO TECHNOLOGIES',
            style: GoogleFonts.inter(color: Colors.white, letterSpacing: 2),
          ),
          kWidth20,
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
          kWidth20,
          const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          kWidth20,
          const Icon(
            Icons.man,
            color: kWhite,
          ),
          kWidth25
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color(0xFF242B4D),
                  ),
                  height: 30,
                  width: 30,
                  child: const Icon(
                    Icons.keyboard_return,
                    color: kWhite,
                  ),
                ),
                kWidth20,
                Text(
                  'Transactions  /',
                  style: GoogleFonts.inter(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                kWidth15,
                Container(
                  color: const Color(0x332B7CFF),
                  height: 30,
                  width: 70,
                  child: Center(
                    child: Text(
                      'MARLO',
                      style: GoogleFonts.lato(color: kBlue),
                    ),
                  ),
                ),
                kWidth20,
                const Text(
                  'HDFC . 5879',
                  style: TextStyle(color: Colors.black),
                ),
                kWidth25,
                Container(
                  color: const Color.fromRGBO(215, 215, 215, 0.2),
                  height: 30,
                  width: 150,
                  child: Center(
                    child: Text(
                      '+ LINK ACCOUNT',
                      style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 23, 0, 154),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Expanded(
                    child: SizedBox(
                  width: 25,
                )),
                Container(
                  color: Colors.orange[900],
                  height: 40,
                  width: 130,
                  child: Center(
                    child: Text(
                      '+ PAYOUT | ',
                      style: GoogleFonts.lato(
                          color: kWhite, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            kHeight10,
            // testing-----
            const Row(
              children: [
                CurrencyWidget(),
                CurrencyWidget(),
                CurrencyWidget(),
                CurrencyWidget(),
                CurrencyWidget(),
                CurrencyWidget(),
                CurrencyWidget(),
                kHeight10,
              ],
            ),
            Text(
              'Transactions',
              style:
                  GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            kHeight5,
            Row(
              children: [
                const Text(
                  'Quick filters:',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                kWidth10,
                Container(
                  height: 35,
                  width: 55,
                  color: const Color(0x332B7CFF),
                  child: const Center(child: Text('All')),
                ),
                kWidth15,
                const FilterTransactionWidget(),
                kWidth10,
                const FilterTransactionWidget(),
                kWidth10,
                const FilterTransactionWidget(),
                kWidth10,
                const FilterTransactionWidget(),
                kWidth10,
                const FilterTransactionWidget(),
                kWidth10,
                const FilterTransactionWidget(),
                kWidth10,
              ],
            ),
            kHeight20,
            const Row(
              children: [
                FilterTransactionWidget(),
                kWidth10,
                FilterTransactionWidget(),
                kWidth10,
                Text(
                  'Clear All',
                  style: TextStyle(fontWeight: FontWeight.bold, color: kBlue),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FilterTransactionWidget extends StatelessWidget {
  const FilterTransactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 75,
      color: const Color(0x332B7CFF),
      child: const Center(child: Text('Credit')),
    );
  }
}
