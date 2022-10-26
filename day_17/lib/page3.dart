import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 620,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/280044441_1368500690239886_8332574311483245234_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGri4oGj9m1oXsNQyNIPe8qI_KEdwWBwtkj8oR3BYHC2UEfNY1DvGXVDVajBFeGDsBLgKah3CJIkqbira9IUTrW&_nc_ohc=zFGY36z7DNsAX_oxS_s&_nc_ht=scontent.fdac31-1.fna&oh=00_AT-6D7FLb4LriLbICS6kZCleEo5WvGfbTWk6C3NsuT3CkA&oe=6355BBC7"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
