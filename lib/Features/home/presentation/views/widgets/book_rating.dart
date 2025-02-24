import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Color(0xffffdd4f),
        ),
        const SizedBox(width: 7.3),
        const Text(
          '8.8',
          style: Styles.textstyle16,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            '(2024)',
            style: Styles.textstyle14,
          ),
        ),
      ],
    );
  }
}
