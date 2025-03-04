import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'action_box.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textstyle30.copyWith(
            fontFamily: 'PlayfairDisplay',
          ),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(bookModel.volumeInfo.authors![0],
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic)),
        ),
        const SizedBox(height: 18),
        const BookRating(
          rating: 5,
          count: 500,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
         ActionBox(
          bookModel: bookModel,
         ),
      ],
    );
  }
}
