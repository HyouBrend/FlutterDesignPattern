import 'package:flutter/material.dart';
import 'package:flexible_tree_view/flexible_tree_view.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/data/models/dto/dropdown_content.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class Dropdown extends StatefulWidget {
  final List<TreeNode<DropdownContent>> listDropdownContent;
  const Dropdown({super.key, required this.listDropdownContent});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.height(context),
      child: FlexibleTreeView<DropdownContent>(
        nodes: widget.listDropdownContent,
        nodeItemBuilder: (context, node) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: Sizes.dp9(context),
                width: Sizes.width(context),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    node.hasNodes
                        ? IconButton(
                            iconSize: 20,
                            splashRadius: 1,
                            padding: const EdgeInsets.only(right: 8),
                            constraints:
                                BoxConstraints.tight(const Size(20, 20)),
                            icon: Icon(node.expanded
                                ? Icons.arrow_drop_down
                                : Icons.arrow_right),
                            onPressed: () {
                              node.expanded = !node.expanded;
                              // BlocProvider.of<ListMsResourceDropDownBloc>(
                              //         context)
                              //     .add(FetchListDropDownResourceEvent(
                              //         resourceId: node.data.resourceId ?? 0));
                            },
                          )
                        : SizedBox(
                            width: Sizes.dp5(context),
                          ),
                    Text(
                      node.data.menu!,
                      style: FontSubtitle(
                              context: context,
                              fontStyle: "Open Sans",
                              fontColor: Colors.black)
                          .setStyle(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              onTap: () {
                // node.expanded = !node.expanded;
                // if (!node.hasNodes) {
                // BlocProvider.of<ChangeMarkdownBloc>(context)
                // .add(node.data.resourceId!);
                // } else {
                //   BlocProvider.of<ListMsResourceDropDownBloc>(context).add(
                //     FetchListDropDownResourceEvent(
                //         resourceId: node.data.resourceId ?? 0),
                //   );
                //}
              },
            ),
          );
        },
      ),
    );
  }
}
