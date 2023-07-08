import 'package:edureal/screens/course_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // creating Static data in lists

  List catNames = [
    "Category",
    "Classes",
    "Free Courses",
    "BookStore",
    "Live Classes",
    "Leaderboard",
  ];

  List<Color> catColors = [
    Color(0xffffcf2f),
    Color(0xff6fe08d),
    Color(0xff61bdfd),
    Color(0xfffc7f7f),
    Color(0xffcb84fb),
    Color(0xff78e667),
  ];

  List<Icon> catIcons = [
    Icon(
      Icons.category,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.video_library,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.assignment,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.store,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.play_circle_fill,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.emoji_events,
      size: 30,
      color: Colors.white,
    ),
  ];

  List imgList = [
    'Flutter',
    'React Native',
    'Python',
    'C#',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Color(0xff674aef),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.dashboard,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 3, bottom: 15),
                child: Text(
                  "Hi, John",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black.withOpacity(0.5),
                      size: 25,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              )
            ]),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  GridView.builder(
                    itemCount: catNames.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.1,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ]);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Courses",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff674aef),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      itemCount: imgList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            (MediaQuery.of(context).size.height - 50 - 25) /
                                (4 * 240),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CourseScreen(
                                  imgList[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xfff5f3ff),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "images/${imgList[index]}.png",
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                imgList[index],
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "10 Objects",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ]),
                          ),
                        );
                      })
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff674aef),
        iconSize: 32,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 18,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Whishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
