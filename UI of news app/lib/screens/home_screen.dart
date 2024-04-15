import 'package:firstapp/custom_widget/suggestion_container.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const List<String> color = ['9C4543', 'B87353', 'C4AE7B', '3E4B6F'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE1E2E1),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image(image: AssetImage('assets/images/display.png')),
          Image.asset('assets/images/display.png'),

          // const Divider(height: 0,thickness: 7, color: Color(0XFF9C4543),),
          // const Divider(height: 7,thickness: 7, color: Color(0XFFB87353),),
          // const Divider(height: 7,thickness: 7, color: Color(0XFFC4AE7B),),
          // const Divider(height: 7,thickness: 7, color: Color(0XFF3E4B6F),),
          //
          // Divider(height: 7,thickness: 7, color: Color(int.parse(color.last, radix: 16)+0XFF000000),),

          _colorLines(),

          // SizedBox(
          //   height: 20,
          // ),

          suggestions(),
        ],
      ),
    );
  }

  Padding suggestions() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "WHAT'S NEW",
            style: TextStyle(
                fontFamily: 'Default font',
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 280,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SuggestionContainer(
                      imagePath: 'assets/images/news1.png',
                      news: "STARFIELD UPDATES AND MOO SUPPORT!",
                      date: "13 SEP 2023"),
                  SuggestionContainer(
                      imagePath: 'assets/images/news2.png',
                      news:
                      "MEET ZACHARY WILSON, SENIOR LEVEL DESIGNER ON STARFIELD AT BETHESDA GAME STUDIOS.",
                      date: "28 AUG 2023"),
                  SuggestionContainer(
                      imagePath: 'assets/images/news1.png',
                      news: "STARFIELD UPDATES AND MOO SUPPORT!",
                      date: "13 SEP 2023"),
                  SuggestionContainer(
                      imagePath: 'assets/images/news2.png',
                      news:
                      "MEET ZACHARY WILSON, SENIOR LEVEL DESIGNER ON STARFIELD AT BETHESDA GAME STUDIOS.",
                      date: "28 AUG 2023"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.home),
                ),
                VerticalDivider(
                  color: Colors.black,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "STAR",
                        style: TextStyle(
                            fontFamily: 'Default font',
                            fontWeight: FontWeight.w900),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.circle_notifications),
                      ),
                      Text(
                        "FRILD",
                        style: TextStyle(
                            fontFamily: 'Default font',
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.window),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _colorLines() {
    return Column(
      children: color.map((c) {
        return Divider(
          height: 8,
          thickness: 9,
          color: Color(int.parse(c, radix: 16) + 0XFF000000),
        );
      }).toList(),
    );
  }
}
