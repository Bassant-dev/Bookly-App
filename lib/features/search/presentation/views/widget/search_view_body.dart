import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widget/bestsellerlistviewitem.dart';
import 'package:bookly/features/search/presentation/views/widget/Custom_Searrch_Textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16,),
          Text('Search Result',style: Styles.textStyle18
            ,),
          SizedBox(height: 16,),
          Expanded(child: searchResultListView())
        ],
      ),
    );
  }
}
class searchResultListView extends StatelessWidget {
  const searchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
