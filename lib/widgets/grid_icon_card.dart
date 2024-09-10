import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class GridIconCard extends StatelessWidget {
  final String subtitle;
  final String paragraph;
  final VoidCallback function;
  final String imageSource;
  const GridIconCard(
      {super.key,
      required this.subtitle,
      required this.paragraph,
      required this.function,
      required this.imageSource});

  @override
  Widget build(BuildContext context) {
    TextStyle subtitleStyle;
    TextStyle paragraphStyle;
    subtitleStyle =
        FontSubtitle(fontStyle: "Open Sans", context: context).setStyle();
    paragraphStyle =
        FontParagraph(fontStyle: "Open Sans", context: context).setStyle();

    return SizedBox(
      width: 273,
      height: 165,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dp2(context)),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(Sizes.dp2(context)),
          onTap: function,
          child: Row(
            children: [
              SizedBox(
                  height: Sizes.dp33(context),
                  width: Sizes.dp24(context),
                  child: Image.asset(imageSource)),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: Sizes.dp3(context), right: Sizes.dp3(context)),
                  child: Column(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              subtitle,
                              style: subtitleStyle,
                            ),
                            SizedBox(height: Sizes.dp1(context)),
                            Text(
                              paragraph,
                              style: paragraphStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
