import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_veiw_item.dart';
import 'package:flutter/material.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
    );
  }
}
