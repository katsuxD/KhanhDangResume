import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:katsu_resume/Widgets/Text/neon_text.dart';
import 'package:katsu_resume/Widgets/Text/poppins.dart';
import 'package:katsu_resume/constraints/utils.dart';
import 'package:provider/provider.dart';

import '../Components/about_component.dart';
import '../Components/resume_component.dart';
import '../Provider/tab_data_provider.dart';
import '../Widgets/Animated/animated_textbox_slider.dart';
import '../Widgets/Buttons/gradient_button.dart';
import '../Widgets/Buttons/neon_button.dart';
import '../Widgets/Cursor/animated-circle_cursor.dart';
import '../Widgets/icons/padded_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String tabData = context.watch<TabDataProvider>().tabData;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 800,
                  width: double.infinity,
                  child: Opacity(
                    opacity: 0.4,
                    child: Image.asset(
                      "assets/images/avatar2.jpg",
                      fit: BoxFit.fitWidth,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 120),
                          child: AnimatedCircleCursorMouseRegion(
                            child: SizedBox(
                              height: 120,
                              width: 160,
                              child: Image.asset(
                                "./assets/images/logo_white.png",
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const PaddedIcon(
                              // color: Color(0xff3B5999),
                              color: kWhite,
                              icon: FontAwesomeIcons.facebookF,
                            ),
                            const PaddedIcon(
                              // color: Color(0xff03A9F4),
                              color: kWhite,
                              icon: FontAwesomeIcons.twitter,
                            ),
                            const PaddedIcon(
                              // color: Color.fromARGB(255, 31, 28, 28),
                              color: kWhite,
                              icon: FontAwesomeIcons.medium,
                            ),
                            const PaddedIcon(
                              // color: Color(0xffF44535),
                              color: kWhite,
                              icon: FontAwesomeIcons.instagram,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            AnimatedCircleCursorMouseRegion(
                              child: GradientButton(
                                clr: const [kYellowNormal, kYellowNormal],
                                height: 80,
                                width: 240,
                                overlayColor: kYellowNormal,
                                onpressed: () {},
                                title: "Download CV",
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    // const NeonText(
                    //     text: "Dang Gia Khanh",
                    //     fontSize: 40,
                    //     textColor: kWhite,
                    //     strokeColor: kYellowNormal,
                    //     strokeWidth: 2,
                    //     shadowColor: kYellowNormal),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
                const Positioned(
                  left: 120,
                  top: 300,
                  child: AutoSizeText(
                    '''“Share your knowledge. 
 It is a way to achieve immortality.” 
                                            - Dalai Lama XIV.''',
                    style: TextStyle(fontSize: 52, color: kWhite),
                    minFontSize: 16,
                    maxFontSize: 30,
                  ),
                ),
                const Positioned(
                  left: 120,
                  top: 500,
                  child: AnimatedCircleCursorMouseRegion(
                    child: NeonButton(
                      text: "VIEW PORTFOLIO",
                      onPressed: null,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    NeonText(
                        text: "Hi, I'm Dang Gia Khanh",
                        fontSize: 40,
                        textColor: kWhite,
                        strokeColor: kYellowNormal,
                        strokeWidth: 2,
                        shadowColor: kYellowNormal),
                    SizedBox(
                      height: 12,
                    ),
                    NeonText(
                        text: "Flutter Developer",
                        fontSize: 32,
                        textColor: kWhite,
                        strokeColor: kBrown,
                        strokeWidth: 2,
                        shadowColor: kYellowNormal),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 440,
                      child: AutoSizeText(
                        "As a new developer, I want to become more flexible and adaptable to different situations. Additionally, I aim to become proficient in Flutter and Dart programming languages by continuously learning and improving my coding skills.",
                        style: TextStyle(fontSize: 16, color: kWhite),
                        minFontSize: 16,
                        maxFontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    NeonText(
                        text: "Mobile design",
                        fontSize: 32,
                        textColor: kWhite,
                        strokeColor: kBrown,
                        strokeWidth: 2,
                        shadowColor: kYellowNormal),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 440,
                      child: AutoSizeText(
                        "Coding is not something I'm aiming for! Understanding the UX and UI of the app is the most important thing. People don't care about how it works at first, but rather how it looks! I'm using Figma to design your app.",
                        style: TextStyle(fontSize: 16, color: kWhite),
                        minFontSize: 16,
                        maxFontSize: 30,
                      ),
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      width: 360,
                      height: 388,
                      child: Image.asset(
                        "assets/images/avatar.jpg",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            MainInfo(tabData: tabData),
            const SizedBox(
              height: 70,
            ),
            tabData == "About Me" ? AboutComponent() : Container(),
            tabData == "Resume" ? ResumeComponent() : Container(),
          ],
        ),
      ),
    );
  }
}

class MainInfo extends StatelessWidget {
  const MainInfo({
    super.key,
    required this.tabData,
  });

  final String tabData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedTextboxSlider(
          icon: FontAwesomeIcons.info,
          title: "About Me",
          onpressed: () {
            context.read<TabDataProvider>().changeTabData("About Me");
          },
          tabData: tabData,
          color: kYellowNormal,
          width: 250,
        ),
        AnimatedTextboxSlider(
          icon: FontAwesomeIcons.addressBook,
          title: "Resume",
          onpressed: () {
            context.read<TabDataProvider>().changeTabData("Resume");
          },
          tabData: tabData,
          color: kYellowNormal,
          width: 250,
        ),
        AnimatedTextboxSlider(
          icon: FontAwesomeIcons.thinkPeaks,
          title: "Portfolio",
          onpressed: () {},
          tabData: tabData,
          color: kYellowNormal,
          width: 250,
        ),
        AnimatedTextboxSlider(
          icon: FontAwesomeIcons.star,
          title: "Testimonial",
          onpressed: () {},
          tabData: tabData,
          color: kYellowNormal,
          width: 250,
        ),
        AnimatedTextboxSlider(
          icon: FontAwesomeIcons.gear,
          title: "Service",
          onpressed: () {},
          tabData: tabData,
          color: kYellowNormal,
          width: 250,
        ),
        AnimatedTextboxSlider(
          icon: FontAwesomeIcons.blog,
          title: "Article",
          onpressed: () {},
          tabData: tabData,
          color: kYellowNormal,
          width: 250,
        ),
        AnimatedTextboxSlider(
          icon: FontAwesomeIcons.envelope,
          title: "Contact",
          onpressed: () {},
          tabData: tabData,
          color: kYellowNormal,
          width: 250,
        ),
      ],
    );
  }
}
