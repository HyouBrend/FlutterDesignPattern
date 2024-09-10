import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/theme/theme.dart';
import 'package:flutter_design_pattern/util/size.dart';
import 'package:flutter_design_pattern/widgets/text_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF333333), // Warna latar belakang gelap
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HYOU CORP.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorsApps.backgroundColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Hyou Corproation in Indonesia',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorsApps.backgroundColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/images/logo_hyou.png',
                      fit: BoxFit.contain,
                      height: 50,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CONTACT US',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorsApps.backgroundColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '📞 Phone\nPhone +62 815-1155-2515',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorsApps.backgroundColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'GET CONNECTED ON',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorsApps.backgroundColor,
                      ),
                    ),
                    SizedBox(height: Sizes.dp1(context)),
                    Text(
                      'SOCIAL MEDIA',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorsApps.backgroundColor,
                      ),
                    ),
                    SizedBox(height: Sizes.dp1(context)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(FontAwesomeIcons.facebook,
                            color: ColorsApps.backgroundColor),
                        SizedBox(width: 10),
                        Icon(FontAwesomeIcons.instagram,
                            color: ColorsApps.backgroundColor),
                        SizedBox(width: 10),
                        Icon(FontAwesomeIcons.twitter,
                            color: ColorsApps.backgroundColor),
                        SizedBox(width: 10),
                        Icon(FontAwesomeIcons.whatsapp,
                            color: ColorsApps.backgroundColor),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(
            thickness: 1,
            color: Color.fromRGBO(200, 200, 200, 1.0),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(Sizes.dp3(context)),
            child: Text(
              "Copyright © Hyou Corp. All rights reserved",
              style: FontParagraph(
                context: context,
                fontStyle: "Open Sans",
                fontColor: ColorsApps.backgroundColor,
              ).setStyle(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
