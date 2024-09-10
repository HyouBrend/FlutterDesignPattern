import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class IconCard extends StatelessWidget {
  final String subtitle;
  final String paragraph;
  final VoidCallback function;
  const IconCard(
      {super.key,
      required this.subtitle,
      required this.paragraph,
      required this.function});

  @override
  Widget build(BuildContext context) {
    TextStyle subtitleStyle;
    TextStyle paragraphStyle;
    subtitleStyle =
        FontSubtitle(fontStyle: "Open Sans", context: context).setStyle();
    paragraphStyle =
        FontParagraph(fontStyle: "Open Sans", context: context).setStyle();

    return SizedBox(
      width: Sizes.dp50(context),
      height: Sizes.dp30(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dp2(context)),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(Sizes.dp2(context)),
          onTap: function,
          child: Row(
            children: [
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(Sizes.dp3(context)),
                    child: CircleAvatar(
                      radius: Sizes.dp4(context),
                      backgroundImage: const NetworkImage('url'),
                    ),
                  ),
                ],
              ),
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
