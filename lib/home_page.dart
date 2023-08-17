import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage( {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC107),
      appBar: AppBar(
        elevation: 7.0,
        shadowColor: Colors.black,
        centerTitle: true,
        backgroundColor: const Color(0xffFEC107),
        title: const Text(
          'ТАПШЫПМА - 03',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             Text(
              'I am Rich',
              style: GoogleFonts.sofia(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
             Text(
              'I am Rich',
              style: GoogleFonts.pacifico(
                color: const Color(0xffF5423a),
                fontSize: 34,
                fontWeight: FontWeight.w700,
                
              ),
            ),
            Image.asset('icons/photo.rich.jpg'),
          ],
        ),
      ),
    );
  }
}
