import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                CustomBookDetailsAppBar(),
                const SizedBox(height: 30),
                BookDetailsSection(bookModel: bookModel),
                const SizedBox(height: 50),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

