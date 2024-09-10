import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/helpers/page_routing/application.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/search_bar.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dp12(context),
      padding: EdgeInsets.symmetric(horizontal: Sizes.dp7(context)),
      child: Row(
        children: [
          IconButton(
            iconSize: Sizes.dp5(context),
            icon: const Icon(
              Icons.apps,
              color: Colors.black,
            ),
            onPressed: () {},
            //padding: EdgeInsets.fromLTRB(
            //Sizes.dp2(context), 0, Sizes.dp2(context), 0),
          ),
          InkWell(
            onTap: () {
              Application.router.navigateTo(context, "/");
            },
            splashColor: Colors.white10,
            // ignore: prefer_const_constructors
            child: Ink.image(
              image: const AssetImage("assets/images/logo_hyou.jpg"),
              fit: BoxFit.fill,
              height: Sizes.dp6(context),
              width: Sizes.dp24(context),
            ),
          ),
          //SizedBox(
          // height: 40,
          //  width: Sizes.dp28(context),
          //  child: Image.asset("assets/logo/devbees.jpg"),
          //  ),
          SizedBox(
            width: Sizes.dp3(context),
          ),
          Container(
            color: Colors.grey,
            child: SizedBox(
              width: 1,
              height: Sizes.dp5(context),
            ),
          ),
          SizedBox(
            width: Sizes.dp3(context),
          ),
          Text("Corporate",
              style: FontParagraph(
                      fontStyle: "Open Sans",
                      fontColor: Colors.grey,
                      context: context)
                  .setStyle()),
          Expanded(
            child: Container(),
          ),
          Searchbar(
            hint: "Search",
            height: Sizes.dp8(context),
            width: Sizes.dp30(context),
          ),
          SizedBox(
            width: Sizes.dp3(context),
          ),
          TextButton(
              onPressed: () {
                Application.router.navigateTo(context, "/login");
              },
              child: Text("Sign In",
                  style: FontParagraph(
                          fontStyle: "Open Sans",
                          fontColor: Colors.blue,
                          context: context)
                      .setStyle())),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(53);
}
