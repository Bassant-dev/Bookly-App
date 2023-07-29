import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class homeviewbody extends StatelessWidget {
  const homeviewbody ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customAppBar(),

        featurebooklistview(),
        
      ],
    );
  }
}
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
          child: customlistviewitem(),
        );

      }),
    );
  }
}


