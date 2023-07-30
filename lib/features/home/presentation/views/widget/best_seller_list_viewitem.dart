import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/book_rating.dart';
import 'package:flutter/material.dart';

class bestsellerlistviewitem extends StatelessWidget {
  const bestsellerlistviewitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image:AssetImage( AssetsData.book1),fit:BoxFit.fill)
              ),
            ),
          ),
          SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width:MediaQuery.of(context).size.width*.5,
                  child:   Text('Harry Potter and the Goblet of Fire'
                    ,style: Styles.textStyle20.copyWith(fontFamily: GTSectraFineRegular,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                ),
                const SizedBox(height: 3,),
                Text('J.K. Rowling',style: Styles.textStyle14,),
                const SizedBox(height: 3,),
                Row(
                  children: [
                    Text('19.99 €',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                   const Spacer(),
                    BookRating(count: 234,rating: 4.8),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}