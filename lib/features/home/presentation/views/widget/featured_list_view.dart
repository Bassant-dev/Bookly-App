import 'package:bookly/features/home/presentation/views/widget/Custom_book_item.dart';
import 'package:flutter/cupertino.dart';

class featurebooklistview extends StatelessWidget {
  const featurebooklistview ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Custombookimage(),
            );

          }),
    );
  }
}