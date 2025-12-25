import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(children: [CustomBookDetailsAppBar(),
      
      CustomBookImage(),
      ]),
    );
  }
}
