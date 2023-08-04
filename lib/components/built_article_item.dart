import 'package:flutter/material.dart';
import 'package:news_app/components/navigetor.dart';
import 'package:news_app/layout/web_view.dart';

class BuildArticleItem extends StatelessWidget {
  const BuildArticleItem({Key? key, this.article}) : super(key: key);
  final dynamic article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigateTo.navigateTo(
            context,
            WebViewScreen(
              url: article['url'],
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      '${article['urlToImage'] ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOWjmOCIdycKe9lcUu5QokVEolXo0nGv1qWg'}'),
                ),
              ),
            ),
            const SizedBox(width: 20.0),
            Expanded(
              child: SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${article['title']}',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '${article['publishedAt']} ',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
