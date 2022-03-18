import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _items = [
    {
      'name': 'Apple Watch 1',
      'image': 'images/images.png',
      'series': 'Series 6 . White',
    },
    {
      'name': 'Apple Watch 2',
      'image': 'images/images.png',
      'series': 'Series 7 . White',
    },
    {
      'name': 'Apple Watch 3',
      'image': 'images/images.png',
      'series': 'Series 8 . White',
    },
    {
      'name': 'Apple Watch 4',
      'image': 'images/images.png',
      'series': 'Series 9 . White',
    },
    {
      'name': 'Apple Watch 5',
      'image': 'images/images.png',
      'series': 'Series 10 . White',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 218, 218),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Color.fromARGB(0, 255, 255, 255),
                  collapsedHeight: 380,
                  expandedHeight: 380,
                  flexibleSpace: BeforeGridItem(),
                ),
              ];
            },
            body: Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Container(
                // padding: EdgeInsets.only(top: 40),
                color: Color.fromARGB(0, 255, 193, 7),
                height: 700,
                child: Center(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: _items.length,
                    itemBuilder: (_, index) => Container(
                      // margin: EdgeInsets.only(top: 30),
                      height: 200,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -32,
                            left: 23,
                            child: Container(
                              child: Image.asset(
                                _items[index]['image'],
                                // height: 100,
                              ),
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 255, 190, 185),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            top: 100,
                            child: Text(
                              _items[index]['name'],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BeforeGridItem extends StatefulWidget {
  const BeforeGridItem({Key? key}) : super(key: key);

  @override
  State<BeforeGridItem> createState() => _BeforeGridItemState();
}

class _BeforeGridItemState extends State<BeforeGridItem> {
  List catagoryItem = [
    'Games',
    'Foods',
    'Mobiles',
    'Groceries',
    'Electronic',
    'Computers',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'Welcom Meharab,',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
        ),
        Text(
          "Lets's do somethings!",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 220,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '40% off during\nCovid-19',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'images/a.png',
                            height: 70,
                            width: 70,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 94, 0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 100,
                  width: 220,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '40% off during\nCovid-19',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'images/a.png',
                            height: 70,
                            width: 70,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 65, 145, 236),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 100,
                  width: 220,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '40% off during\nCovid-19',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'images/a.png',
                            height: 70,
                            width: 70,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 133, 71, 248),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Categories',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'View All',
                style: TextStyle(color: Colors.orange),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catagoryItem.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    catagoryItem[index],
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 224, 224),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
