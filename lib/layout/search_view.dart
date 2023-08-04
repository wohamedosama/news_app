import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/components/article_builder.dart';
import 'package:news_app/components/defualt%20_form_fileds.dart';
import 'package:news_app/cubits/news_cubit.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DefaultTextFormFields(
                    onChanged: (value) {
                      NewsCubit.get(context).makeSearch(value!);
                    },
                    onTap: () {},
                    textEditingController: searchController,
                    type: TextInputType.text,
                    prefix: const Icon(Icons.search),
                    label: 'Search'),
              ),
              Expanded(
                  child: ArticleBuilder(
                isCondition: list.length > 0,
                isSearch: true,
              )),
            ],
          ),
        );
      },
    );
  }
}
