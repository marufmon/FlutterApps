import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecorationapp/model/datalist.dart';
import 'package:homedecorationapp/screen/decorationlistview.dart';

class GRiveItem extends StatefulWidget {
  const GRiveItem({super.key});

  @override
  State<GRiveItem> createState() => _GRiveItemState();
}

class _GRiveItemState extends State<GRiveItem> {
  final decoration = DecorationList.generetedDecorationList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: decoration.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(7),
                  height: 210,
                  width: 190,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DEcorationView()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        decoration[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        decoration[index].name,
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        decoration[index].price,
                        style:
                            GoogleFonts.roboto(fontSize: 20, color: Colors.red),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
