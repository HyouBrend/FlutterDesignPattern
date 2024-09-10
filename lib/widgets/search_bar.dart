import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class Searchbar extends StatelessWidget {
  final String? hint;
  final double height;
  final double width;
  const Searchbar({
    super.key,
    this.hint,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      constraints: BoxConstraints(
        maxHeight: height,
        maxWidth: width,
      ),
      child: TextField(
        style: FontParagraph(
          context: context,
          fontStyle: "Open Sans",
        ).setStyle(),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            size: Sizes.dp5(context),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
