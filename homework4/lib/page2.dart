import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=QbJrP20tuIcAX9MujzS&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_yEvuq7Mh7MdESPzSNBFYjyMTCBZMbmL2E7i51O8g_Jw&oe=634E83A9"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
