import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class MenuCard extends StatelessWidget {
  final String text;
  final String? theme;
  final VoidCallback function;
  const MenuCard({
    super.key,
    required this.function,
    required this.text,
    this.theme,
  });

  @override
  Widget build(BuildContext context) {
    Color color;
    TextStyle style;
    Color iconColor;
    if (theme == "Dark") {
      color = const Color(0xFF075581);
      style = FontParagraph(
        context: context,
        fontStyle: "Open Sans",
        fontColor: Colors.white,
      ).setStyle();
      iconColor = Colors.white;
    } else {
      color = Colors.white;
      style = FontParagraph(
        context: context,
        fontStyle: "Open Sans",
      ).setStyle();
      iconColor = const Color(0xFF028ED5);
    }
    return InkWell(
      onTap: function,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dp4(context)),
        ),
        child: SizedBox(
          height: 67,
          width: 273,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Sizes.dp3(context)),
            child: Row(
              children: [
                Text(
                  text,
                  style: style,
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right,
                    size: Sizes.dp5(context),
                  ),
                  color: iconColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
