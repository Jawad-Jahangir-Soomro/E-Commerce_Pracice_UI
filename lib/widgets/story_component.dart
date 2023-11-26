import 'package:demo_tm/constents/colors.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final AssetImage backgroundImage;
  final String text;
  final bool isLive;
  final bool ownStory;
  const Story({
    Key? key,
    required this.backgroundImage,
    required this.text,
    this.isLive = false,
    this.ownStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: 75,
              width: 75,
              decoration: ownStory
                  ? const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    )
                  : const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(198, 40, 102, 1),
                          Color.fromRGBO(245, 174, 96, 1),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
              child: Center(
                child: CircleAvatar(
                  radius: ownStory ? 36.5:34,
                  backgroundImage: backgroundImage,
                  backgroundColor: backgroundColor,
                ),
              ),
            ),
            if (isLive)
              Positioned(
                top: 70,
                left: 23,
                child: Container(
                  height: 16,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(color: backgroundColor, width: 2),
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 215, 0, 1),
                        Color.fromRGBO(253, 187, 18, 1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "LIVE",
                      style: TextStyle(
                          color: titleColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            if (ownStory)
              Positioned(
                top: 60,
                left: 60,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: backgroundColor, width: 2),
                      color: Colors.blue),
                  child: const Center(
                      child: Icon(
                    Icons.add,
                    color: whiteColor,
                    size: 14,
                  )),
                ),
              )
          ],
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
