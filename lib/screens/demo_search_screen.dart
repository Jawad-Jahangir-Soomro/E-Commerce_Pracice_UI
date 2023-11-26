import 'package:demo_tm/constents/colors.dart';
import 'package:demo_tm/widgets/card.dart';
import 'package:demo_tm/widgets/categories.dart';
import 'package:demo_tm/widgets/story_component.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';

class DemoSearchScreen extends StatefulWidget {
  const DemoSearchScreen({Key? key}) : super(key: key);

  @override
  State<DemoSearchScreen> createState() => _DemoSearchScreenState();
}

class _DemoSearchScreenState extends State<DemoSearchScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(143),
          child: Stack(
            children: [
              AppBar(
                backgroundColor: backgroundColor,
                flexibleSpace: Column(
                  children: [
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 215, 0, 1),
                            Color.fromRGBO(253, 187, 18, 1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Container(
                      height: 63,
                    ),
                  ],
                ),
                elevation: 0,
                leading: Align(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu_outlined,
                      color: Colors.black,
                      size: 33,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.86,
                child: SizedBox(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 32,
                        width: 55,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                        ),
                        child: Align(
                          alignment: const Alignment(-0.7, 0),
                          child: badges.Badge(
                            position:
                                badges.BadgePosition.topEnd(top: -3, end: -5),
                            showBadge: true,
                            ignorePointer: false,
                            badgeContent: const Text(
                              "3",
                              style: TextStyle(color: whiteColor),
                            ),
                            child: Image.asset("assets/images/notif.png"),
                          ),
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 55,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                        ),
                        child: Align(
                          alignment: const Alignment(-0.7, 0),
                          child: badges.Badge(
                            position:
                                badges.BadgePosition.topEnd(top: -3, end: -5),
                            showBadge: true,
                            ignorePointer: false,
                            badgeContent: const Text(
                              "1",
                              style: TextStyle(color: whiteColor),
                            ),
                            child: Image.asset("assets/images/messageicon.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: MediaQuery.of(context).size.width * 0.31,
                child: const CircleAvatar(
                  radius: 75,
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                  backgroundImage: AssetImage("assets/images/pattern.png"),
                ),
              ),
              Positioned(
                top: 25,
                left: MediaQuery.of(context).size.width * 0.35,
                child: const CircleAvatar(
                  radius: 60,
                  backgroundColor: backgroundColor,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: backgroundColor,
                    backgroundImage: AssetImage("assets/images/techmart.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Faz Sam,",
                  style: GoogleFonts.lato(
                    color: titleColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            Story(
                              backgroundImage: AssetImage(
                                "assets/images/stp.png",
                              ),
                              text: "Your Story",
                              ownStory: true,
                            ),
                            Story(
                              backgroundImage:
                                  AssetImage("assets/images/st1.png"),
                              text: "s-mart",
                            ),
                            Story(
                              backgroundImage:
                                  AssetImage("assets/images/st2.png"),
                              text: "samsung",
                              isLive: true,
                            ),
                            Story(
                              backgroundImage:
                                  AssetImage("assets/images/st3.png"),
                              text: "watchst",
                            ),
                            Story(
                              backgroundImage:
                                  AssetImage("assets/images/techmart.png"),
                              text: "John",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            ProductCard(
                                imagePath: "assets/images/buggati.png",
                                text: "Bugatti Sports Edition\n2023....",
                                prize: "2,637,000",
                                rating: "5.0"),
                            ProductCard(
                                imagePath: "assets/images/head.png",
                                text: "P47 Wireless Headphones\nBluetooth....",
                                prize: "62.40",
                                rating: "4.9"),
                            ProductCard(
                                imagePath: "assets/images/mobile.png",
                                text:
                                    "Lorem ipsum dolor sit \namet consectetur...",
                                prize: "2,637,000",
                                rating: "4.9"),
                            ProductCard(
                                imagePath: "assets/images/mobile2.png",
                                text:
                                    "Lorem ipsum dolor sit \namet consectetur...",
                                prize: "2,637,000",
                                rating: "4.9"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 36,
                    width: 233,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 215, 0, 0.5),
                          Color.fromRGBO(253, 187, 18, 0.5),
                        ],
                      ),
                    ),
                    child: const Center(
                      child: Text("See All Featured Ads"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Categories",
                  style: GoogleFonts.lato(
                    color: titleColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Categories(
                        imagePath: "assets/images/cat1.png",
                        text: "Graphic Cards"),
                    Categories(
                        imagePath: "assets/images/mobile4.png",
                        text: "Cell Phones"),
                    Categories(
                        imagePath: "assets/images/cat2.png", text: "Property"),
                  ],
                ),
                Row(
                  children: const [
                    Categories(
                        imagePath: "assets/images/cat2.png", text: "Property"),
                    Categories(
                        imagePath: "assets/images/cat1.png",
                        text: "Graphic Cards"),
                    Categories(
                        imagePath: "assets/images/mobile4.png",
                        text: "Cell Phones"),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomAppBar(
            color: Colors.black,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8.0,
            height: 80,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildBottomAppBarItem(
                  icon: Icons.home,
                  index: 0,
                ),
                _buildBottomAppBarItem(icon: Icons.search_outlined, index: 1),
                const SizedBox(
                  width: 48,
                ), // The space for the FloatingActionButton
                _buildBottomAppBarItem(icon: Icons.shopping_cart, index: 2),
                _buildBottomAppBarItem(icon: Icons.person_2_outlined, index: 3),
              ],
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            child: Image.asset(
              'assets/images/CenterIcon.png',
            ),
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _buildBottomAppBarItem({required IconData icon, required int index}) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            icon,
            color: _selectedIndex == index
                ? const Color.fromRGBO(255, 215, 0, 1)
                : Colors.grey,
            size: 35,
          ),
          onPressed: () => _onItemTapped(index),
        ),
        if(_selectedIndex == index)
        Container(
          height: 4,
          width: 20,
          color: const Color.fromRGBO(255, 215, 0, 1),
        )
      ],
    );
  }
}
