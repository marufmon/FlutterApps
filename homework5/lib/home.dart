import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework5/one.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=0B_CcN8fMz0AX9xwxXo&_nc_ht=scontent.fdac31-1.fna&oh=00_AT-79dxcmXXSqWSpx6DK6Jh8zizxOtE2F1Hq4mzclfdQaQ&oe=63527829"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4),
                  child: Text(
                    "Account Created :)",
                    style: GoogleFonts.roboto(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Account Created is susscessful & required",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Account Created & get started",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .40),
                  child: ElevatedButton(
                      onPressed: (() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => One()));
                      }),
                      child: Text(
                        "Done",
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
