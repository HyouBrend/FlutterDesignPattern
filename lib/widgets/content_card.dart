import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class ContentCard extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final String? subtitle;
  final Widget? content;

  const ContentCard(
      {super.key,
      this.title,
      this.subtitle,
      this.content,
      this.titleStyle,
      this.subtitleStyle});

  Widget getTitle(String? title, BuildContext context) {
    if (title == null) {
      return Container();
    } else {
      return Text(
        title,
        style: titleStyle ??
            FontTitle(fontStyle: "Open Sans", context: context).setStyle(),
      );
    }
  }

  Widget getSubtitle(String? subtitle, BuildContext context) {
    if (subtitle == null) {
      return Container();
    } else {
      return Text(
        subtitle,
        style: subtitleStyle ??
            FontSubtitle(fontStyle: "Open Sans", context: context).setStyle(),
      );
    }
  }

  Widget getContent(Widget? content) {
    if (content == null) {
      return Container();
    } else {
      return content;
    }
  }

  @override
  Widget build(BuildContext context) {
    double contentSpace;
    double subtitleSpace;
    contentSpace = ((subtitle == null && title == null) || content == null)
        ? 0
        : Sizes.dp5(context);
    subtitleSpace =
        (title == null || subtitle == null) ? 0 : Sizes.dp1(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Sizes.dp7(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getTitle(title, context),
          SizedBox(
            height: subtitleSpace,
          ),
          getSubtitle(subtitle, context),
          SizedBox(
            height: contentSpace,
          ),
          getContent(content)
        ],
      ),
    );
  }
}
