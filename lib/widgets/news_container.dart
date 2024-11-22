import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Views/NewsWebView.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel news;
  const NewsTile({required this.news, super.key});

  @override
  Widget build(BuildContext context) {
    const placeholderImage =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Image_not_available.png/640px-Image_not_available.png";

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsWebView(url: news.url);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  news.image?.isNotEmpty == true
                      ? news.image!
                      : placeholderImage,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
              news.title,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              news.subTitle,
              maxLines: 2,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
