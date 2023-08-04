import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/components/article_builder.dart';
import 'package:news_app/cubits/news_cubit.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).science;
        return ArticleBuilder(
          isCondition: list.length > 1,
          list: list,
        );
      },
    );
  }
}
//ConditionalBuilder(
//           condition: list.length > 1,
//           builder: (context) {
//             return ListView.separated(
//               physics: const BouncingScrollPhysics(),
//               itemBuilder: (context, index) => BuildArticleItem(
//                 article: list[index],
//               ),
//               separatorBuilder: (context, index) => const MyDivider(),
//               itemCount: list.length,
//             );
//           },
//           fallback: (context) {
//             return const Center(
//               child: CircularProgressIndicator(
//                 strokeWidth: 5,
//               ),
//             );
//           },
//         );
