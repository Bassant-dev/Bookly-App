import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widget/bestsellerlistviewitem.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/Custom_book_item.dart';
import 'package:bookly/features/home/presentation/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeviewbody extends StatelessWidget {
  const homeviewbody ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: customAppBar(),
              ),
              const featurebooklistview(),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller',style: Styles.textStyle18.copyWith(fontFamily: GTSectraFineRegular)
                  ,),
              ),
              const SizedBox(height: 20,),


            ],

          ) ,
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BookListviewItem(),
          ),
        )
      ],
    );
  }
}



