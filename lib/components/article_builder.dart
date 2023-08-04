import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/built_article_item.dart';
import 'package:news_app/components/my_divider.dart';

class ArticleBuilder extends StatelessWidget {
  ArticleBuilder({
    Key? key,
    this.list,
    this.isCondition,
    this.isSearch = false,
  }) : super(key: key);
  final list;
  final bool? isCondition;
  final bool? isSearch;

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: isCondition!,
      builder: (context) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => BuildArticleItem(
            article: list[index],
          ),
          separatorBuilder: (context, index) => const MyDivider(),
          itemCount: list.length,
        );
      },
      fallback: (context) => isSearch!
          ? Container()
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.deepOrange,
              ),
            ),
    );
  }
}
