import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ''),
        const SizedBox(height: 35),

        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(textAlign: TextAlign.center,
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              
            ),
          ),
        ),
        const SizedBox(height: 15),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
         BooksAction(bookModel: book,),
      ],
    );
  }
}
