import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:flutter_design_pattern/helpers/page_routing/application.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class BreadCrumpWidget extends StatelessWidget {
  final Map<String, String>? pageSequence;
  const BreadCrumpWidget(this.pageSequence, {super.key});

  @override
  Widget build(BuildContext context) {
    return BreadCrumb.builder(
      itemCount: pageSequence!.length,
      builder: (index) {
        return BreadCrumbItem(
            content: Text(
              pageSequence!.keys.elementAt(index).toString(),
              style: FontParagraph(fontStyle: "Open Sans", context: context)
                  .setStyle(),
            ),
            onTap: () {
              Application.router.navigateTo(
                  context, pageSequence!.values.elementAt(index).toString());
            });
      },
      divider: const Icon(Icons.chevron_right,
          color: Color.fromRGBO(2, 142, 213, 1)),
    );
  }
}
