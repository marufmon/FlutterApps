// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ratingBar(),
          quantityWidget(),
        ],
      ),
    );
  }

  Widget ratingBar() {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      unratedColor: Colors.white,
      itemSize: 25,
      itemBuilder: (context, _) => const Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      onRatingUpdate: (rating) {},
    );
  }

  Widget quantityWidget() {
    return Row(
      children: [
        MaterialButton(
          minWidth: 20,
          color: Colors.blue,
          onPressed: (() {}),
          child: Icon(
            Icons.add,
            size: 25,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "01",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(
          width: 5,
        ),
        MaterialButton(
          minWidth: 20,
          color: Colors.blue,
          onPressed: (() {}),
          child: Center(
            child: Icon(
              Icons.remove,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
