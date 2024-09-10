import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';
import 'package:markdown_widget/markdown_widget.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markdown_widget/config/highlight_themes.dart' as theme;

class MarkDownWidget extends StatefulWidget {
  final String markdownContent;
  final TocController controller;
  const MarkDownWidget(
      {super.key, required this.markdownContent, required this.controller});

  @override
  _MarkDownWidgetState createState() => _MarkDownWidgetState();
}

class _MarkDownWidgetState extends State<MarkDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MarkdownWidget(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        controller: widget.controller,
        data: widget.markdownContent,
        // padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        styleConfig: StyleConfig(
          titleConfig: TitleConfig(
            showDivider: false,
            commonStyle: FontTitle(
                    context: context,
                    fontStyle: "Open Sans",
                    fontColor: Colors.black)
                .setStyle(),
          ),
          pConfig: PConfig(
            textStyle: FontParagraph(
                    context: context,
                    fontStyle: "Open Sans",
                    fontColor: Colors.black)
                .setStyle(),
          ),
          preConfig: PreConfig(
            textStyle: FontParagraph(
                    context: context,
                    fontStyle: "Open Sans",
                    fontColor: Colors.white)
                .setStyle(),
            language: 'c#',
            theme: theme.monokaiTheme,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color.fromARGB(255, 46, 46, 46),
            ),
          ),
        ),
      ),
    );
  }
}
