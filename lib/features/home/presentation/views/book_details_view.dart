import 'package:bookly/features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: BookDtailsViewBody()),
    );
  }
}
