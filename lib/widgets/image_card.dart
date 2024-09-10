import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;
  final String subtitle;
  final String? paragraph;
  final VoidCallback function;
  const ImageCard({
    super.key,
    required this.imageUrl,
    required this.function,
    required this.subtitle,
    this.paragraph,
  });

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
      height: Sizes.dp36(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          borderRadius: BorderRadius.circular(13.0),
          onTap: function,
          child: Column(
            children: [
              Image.network(
                imageUrl,
                height: Sizes.dp28(context),
                width: Sizes.dp54(context),
                fit: BoxFit.fitWidth,
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(Sizes.dp3(context)),
                  child: Column(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              subtitle,
                              maxLines: 2,
                              style: subtitleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: Sizes.dp1(context)),
                            Text(
                              paragraph!,
                              maxLines: 1,
                              style: paragraphStyle,
                              overflow: TextOverflow.ellipsis,
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
