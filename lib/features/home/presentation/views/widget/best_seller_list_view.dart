
import 'package:bookly/features/home/presentation/views/widget/bestsellerlistviewitem.dart';
import 'package:flutter/material.dart';

class BookListviewItem extends StatelessWidget {
  const BookListviewItem ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){


          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: bestsellerlistviewitem(),
          );
        });
  }
}