import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'action_box.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
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
                style:
                    Styles.textStyle18.copyWith(fontStyle: FontStyle.italic)),
          ),
          const SizedBox(height: 18),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 37),
          const ActionBox(),
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also like',
                style:
                    Styles.textstyle14.copyWith(fontWeight: FontWeight.w600)),
          ),
          const SizedBox(height: 16),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
