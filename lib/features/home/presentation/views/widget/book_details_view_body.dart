import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/Custom_Button.dart';
import 'package:bookly/features/home/presentation/views/widget/book_detail_section.dart';
import 'package:bookly/features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widget/books_action.dart';
import 'package:bookly/features/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookly/features/home/presentation/views/widget/similar_book_section.dart';
import 'package:bookly/features/home/presentation/views/widget/similar_books_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_Book_Details_AppBar.dart';
import 'Custom_book_item.dart';

class BookDtailsViewBody extends StatelessWidget {
  const BookDtailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(

              children: [
                CustomBookDetailsAppBar(),

                BookDetailsSection(),

                Expanded(child:
                SizedBox(height: 50,)),
                Simalarbookssection(),
                SizedBox(height: 40,),
              ],
            ),
          ),
        )
      ],
    );

  }
}

