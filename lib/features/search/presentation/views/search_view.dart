
import 'package:bookly/features/search/presentation/views/widget/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}