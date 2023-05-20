import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:katsu_resume/constraints/utils.dart';
import '../Widgets/Buttons/gradient_button.dart';
import '../Widgets/Buttons/neon_button.dart';
import '../Widgets/Text/neon_text.dart';
import '../Widgets/Text/poppins.dart';

import '../Widgets/Cursor/animated-circle_cursor.dart';
import '../Widgets/Misc/info_tile.dart';

class AboutComponent extends StatefulWidget {
  const AboutComponent({super.key});

  @override
  State<AboutComponent> createState() => _AboutComponentState();
}

class _AboutComponentState extends State<AboutComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      padding: const EdgeInsets.all(80),
      decoration: BoxDecoration(
        color: kBgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              spreadRadius: 10,
              blurRadius: 20)
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 650,
                    width: 400,
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset("./assets/images/art_ava.png")),
                  ),
                  Positioned(
                      top: 80,
                      right: 50,
                      child: Container(
                        height: 450,
                        width: 300,
                        padding: const EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 40,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.4),
                              kBgColor.withOpacity(0.4)
                            ],
                          ),
                        ),
                        child: Column(
                          children: const [
                            InfoTile(
                              title: "Name",
                              subTitle: "Đặng Gia Khánh",
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InfoTile(
                              title: "Mail",
                              subTitle: "khanhdangcv2021@gmail.com",
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InfoTile(
                              title: "Phone",
                              subTitle: "+84 985 771 764",
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InfoTile(
                              title: "Address",
                              subTitle: "Binh Tan, Ho Chi Minh",
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  NeonText(
                      text: "About me",
                      fontSize: 36,
                      textColor: kWhite,
                      strokeColor: kYellowNormal,
                      strokeWidth: 2,
                      shadowColor: kYellowNormal),
                  SizedBox(height: 20),
                  Poppins(
                    text:
                        "Just an ordinary guy trying to find what the world is",
                    fontSize: 24,
                    color: kWhite,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(height: 20),
                  Poppins(
                    text:
                        "A passionate software engineer, huge love with web and mobile product",
                    fontSize: 22,
                    color: kWhite,
                    fontWeight: FontWeight.w400,
                  ),
                  Poppins(
                    text:
                        "As a software engineer, having a good background,As a software engineer, having a good background, As a software engineer, having a good background, As a software engineer, having a good background, As a software engineer, having a good background, ",
                    fontSize: 18,
                    color: kWhite,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AnimatedCircleCursorMouseRegion(
                    child: AnimatedCircleCursorMouseRegion(
                      child: NeonButton(
                        text: "VIEW PORTFOLIO",
                        onPressed: null,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
