import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),

          CustomBookImage(),
          const SizedBox(height: 35),

          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
          const SizedBox(height: 25,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 16,),
          SimilarBooksListView(),
           
        ],
      ),
    );
  }
}
