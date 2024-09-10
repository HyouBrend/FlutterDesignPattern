import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class DocumentationTitle extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final String? subtitle;
  final String? author;

  const DocumentationTitle(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.author,
      this.titleStyle,
      this.subtitleStyle});

  Widget getTitle(String? title, BuildContext context) {
    if (title == null) {
      return Container();
    } else {
      return Text(
        title,
        style: titleStyle ??
            FontDocsTitle(fontStyle: "Open Sans", context: context).setStyle(),
      );
    }
  }

  Widget getSubtitle(String? subtitle, BuildContext context) {
    if (subtitle == null) {
      return Container();
    } else {
      return Text(
        subtitle,
        maxLines: 2,
        style: subtitleStyle ??
            FontDocsSubtitle(fontStyle: "Open Sans", context: context)
                .setStyle(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double subtitleSpace;
    subtitleSpace = (title == null || subtitle == null) ? 0 : 8;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getTitle(title, context),
          SizedBox(
            height: subtitleSpace,
          ),
          Row(
            children: [
              Expanded(
                child: getSubtitle(subtitle, context),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.thumb_up_sharp),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.thumb_down_sharp),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          getSubtitle(author, context)
        ],
      ),
    );
  }
}
