import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
        ),
        const SizedBox(width: 6.3),
        const Text(
          '8.8',
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 5),
        Text(
          '2024',
          style: Styles.textstyle16.copyWith(
            color:const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
