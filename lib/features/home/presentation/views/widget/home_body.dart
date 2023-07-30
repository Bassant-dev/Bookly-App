import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/best_seller_list_viewitem.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeviewbody extends StatelessWidget {
  const homeviewbody ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const customAppBar(),
          const featurebooklistview(),
          const SizedBox(height: 50,),
          Text('Best Seller',style: Styles.textStyle18.copyWith(fontFamily: GTSectraFineRegular)
            ,),
          const SizedBox(height: 20,),
          const bestsellerlistviewitem(),

        ],

      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}


