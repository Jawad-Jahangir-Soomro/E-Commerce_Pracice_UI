import 'package:flutter/material.dart';
import '../constents/colors.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final String prize;
  final String rating;
  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.prize,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 253,
        width: 190,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.5), // Color and opacity of the shadow
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3), // Offset from the Container
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Stack(
                        children: [
                          Image.asset(
                            imagePath, // Replace with your image asset path
                            fit: BoxFit.cover,
                            height: 137, // Set this to the height you want
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width * 0.35,
                            top: 5,
                            child: const Icon(
                              Icons.favorite,
                              color: heartColor,
                              size: 25,
                            ),
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.155,
                              child: Container(
                                height: 12,
                                width: 58,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.camera,
                                          size: 8,
                                          color: whiteColor,
                                        ),
                                        Text(
                                          "15",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 7,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.video_camera_back,
                                          size: 8,
                                          color: whiteColor,
                                        ),
                                        Text(
                                          "15",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 7,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Text(
                      text,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: cardTitleColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "USD $prize",
                          style: const TextStyle(
                            fontSize: 17,
                            color: prizeColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const CircleAvatar(
                          radius: 18,
                          backgroundColor: circleColor,
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            size: 23,
                            color: cardTitleColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.star, color: Colors.yellow[700], size: 16),
                      Text(
                        " $rating",
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 22,
                  width: 79,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
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
                      "Featured",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
