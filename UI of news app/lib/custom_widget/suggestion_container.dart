
import 'package:flutter/material.dart';

class SuggestionContainer extends StatelessWidget {
  const SuggestionContainer({
    super.key,
    required this.imagePath,
    required this.news,
    required this.date,
  });
  final String imagePath;
  final String news;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 0.5),
        ),
        child: Row(
          children: [
            SizedBox(
                width: 140,
                height: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: TextStyle(
                          fontFamily: 'Default font',
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            fontFamily: 'Default font',
                            fontSize: 10,
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          "LEARN MORE",
                          style: TextStyle(
                            fontFamily: 'Default font',
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}