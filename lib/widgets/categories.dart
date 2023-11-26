import 'package:demo_tm/constents/colors.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String imagePath;
  final String text;
  const Categories({Key? key, required this.imagePath, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromRGBO(255,215,0,1), width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(imagePath), fit: BoxFit.cover,),
          Text(text,style: const TextStyle(color: cardTitleColor),),
        ],
      ),
    );
  }
}
