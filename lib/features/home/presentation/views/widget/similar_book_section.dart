import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/similar_books_listview.dart';
import 'package:flutter/material.dart';

class Simalarbookssection extends StatelessWidget {
  const Simalarbookssection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like',style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600
        ),),
        const SizedBox(height: 16,),
        const SimilarBooksListview(),
      ],
    );
  }
}
