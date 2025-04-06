import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gyo/components/breathing_text.dart';
import 'package:gyo/models/providers/theme_provider.dart';
import 'package:gyo/pages/dining_setting_page.dart';
import 'package:gyo/shared/assets.dart';
import 'package:gyo/shared/styles.dart';
import 'package:provider/provider.dart';

import '../shared/text.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    context
                        .read<ThemeProvider>()
                        .themePreset
                        .backgroundImagePath,
                  )),
            ),
            TextButton(
              style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DiningSettingPage(),
                ));
              },
              child: Column(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Center(
                        child: BreathingText(
                          text: AppStrings.orderHere,
                          style: poppinsFont90ptBold(
                            color: whiteColor,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                color: shadowColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Tap to start your order',
                        style: poppinsFont20ptSemibold(color: whiteColor),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Powered by',
                          style: poppinsFont16pt(color: footerColor),
                        ),
                        SizedBox(
                          width: 45,
                          height: 50,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: SvgPicture.asset(
                              AppIcons.gyoLogo,
                              colorFilter: ColorFilter.mode(
                                footerColor,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
