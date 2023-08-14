import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Custombookimage extends StatelessWidget {
  const Custombookimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(image:AssetImage( AssetsData.book1),fit:BoxFit.fill)
        ),
      ),
    );
  }
}