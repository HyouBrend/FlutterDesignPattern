import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/data/models/dto/table_content.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class TableContentContainer extends StatefulWidget {
  final List<TableContent> listTableContent;
  final double height;
  final double width;

  const TableContentContainer({
    super.key,
    required this.listTableContent,
    required this.height,
    required this.width,
  });

  @override
  _TableContentContainerState createState() => _TableContentContainerState();
}

class _TableContentContainerState extends State<TableContentContainer> {
  void _changeIsSelectedtoTrue(int index) {
    setState(() {
      for (int i = 0; i < widget.listTableContent.length; i++) {
        if (i == index) {
          widget.listTableContent[i].isSelected = true;
        } else {
          widget.listTableContent[i].isSelected = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: widget.height,
        maxWidth: widget.width,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("In This Article"),
            ListView.builder(
              itemExtent: Sizes.dp10(context),
              scrollDirection: Axis.vertical,
              itemCount: widget.listTableContent.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return TableContentItem(
                  index: index,
                  keyHeadline: widget.listTableContent[index].keyHeadline,
                  titleDesc: widget.listTableContent[index].titleDesc,
                  isSelected: widget.listTableContent[index].isSelected,
                  notifyParent: _changeIsSelectedtoTrue,
                );
              },
            )
          ]),
      //   TextField(
      //   style: FontParagraph(r
      //     context: context,
      //     fontStyle: "Open Sans",
      //   ).setStyle(),
      //   textAlignVertical: TextAlignVertical.center,
      //   decoration: InputDecoration(
      //     border: InputBorder.none,
      //     prefixIcon: const Icon(Icons.search),
      //     hintText: hint,
      //   ),
      // ),
    );
  }
}

class TableContentItem extends StatelessWidget {
  final int keyHeadline;
  final int index;
  final String titleDesc;
  final bool isSelected;
  final ValueChanged<int> notifyParent;

  const TableContentItem(
      {super.key,
      required this.keyHeadline,
      required this.index,
      required this.titleDesc,
      required this.isSelected,
      required this.notifyParent});

  Border? checkIsSelected(bool isSelected) {
    if (isSelected) {
      return const Border(left: BorderSide(color: Colors.blue, width: 5));
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle contentTitleStyle =
        FontSubtitle(fontStyle: "Open Sans", context: context).setStyle();
    return SizedBox(
        width: Sizes.dp18(context),
        child: InkWell(
            borderRadius: BorderRadius.circular(0),
            onTap: () => notifyParent(index),
            child: Container(
              decoration: BoxDecoration(
                border: checkIsSelected(isSelected),
              ),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        titleDesc,
                        maxLines: 1,
                        style: contentTitleStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ]),
            )));
  }
}
