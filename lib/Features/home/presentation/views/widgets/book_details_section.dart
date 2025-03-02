import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'action_box.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3f/JPEG_example_flower.jpg',
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'The Jungle Book',
          style: Styles.textstyle30.copyWith(
            fontFamily: 'PlayfairDisplay',
          ),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling',
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic)),
        ),
        const SizedBox(height: 18),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const ActionBox(),
      ],
    );
  }
}
