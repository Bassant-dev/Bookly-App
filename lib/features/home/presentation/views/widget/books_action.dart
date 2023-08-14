import 'package:bookly/core/widget/Custom_Button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(child: CustomButton(backgroundColor: Colors.white,text: '19.99€',
            textColor: Colors.black,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),)),
          Expanded(child: CustomButton(
            text: 'Free preview',
            fontSize: 16,
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),)),
        ],
      ),
    );
  }
}
