import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/Custom_book_item.dart';
import 'package:bookly/features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widget/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  // final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.2),
            child:const Custombookimage(),
          ),
          const SizedBox(height: 43,),
          Text('The Jungle Book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
          const SizedBox(height: 6,),
          Opacity(
              opacity: .7,
              child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),)),
          const SizedBox(height: 18,),
          const BookRating(rating: 4.2, count:10,mainAxisAlignment: MainAxisAlignment.center,),
          const SizedBox(height: 37,),
          const BooksAction(),
        ]
    );
  }
}
