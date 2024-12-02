import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Shop Logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80.0, bottom: 50.0, top: 120),
            child: Image.asset('lib/images/shoppingBag.png'),
          ),
          // "We Deliver grocery at your door step Text"
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We Deliver Grocery at your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //  Some Texts
          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, right: 24.0, bottom: 24.0, top: 15.0),
            child: Text(
                textAlign: TextAlign.center,
                'Groceer gives you fresh vegetables and fruits, Order fresh items from groceer.',
                style: TextStyle(color: Colors.grey[600])),
          ),
          const Spacer(),
          // Get Started Button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24.0),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
