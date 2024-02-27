import 'package:device_preview/device_preview.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:third_design/Finanance_Screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _currentPosition = 1;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FinananceScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.40),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AppBar(
              backgroundColor: const Color(0xff48268c),
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              title: Text(
                "OVO",
                style: TextStyle(color: Colors.white),
              ),
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                      Text(
                        "OVO Cash",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "Rp10.000.000",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Row(
                        children: [
                          Text(
                            "OVO Points",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "800,000",
                            style: TextStyle(color: Color(0xffFdaF02)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: Colors.white),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: 20,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 0.35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle_outline,
                                color: Color(0xff9376d1),
                                size: 40,
                              ),
                            ),
                            Text(
                              "Top Up",
                              style: TextStyle(
                                color: Color(0xff9376d1),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.track_changes_outlined,
                                color: Color(0xff9376d1),
                                size: 40,
                              ),
                            ),
                            Text(
                              "Transfer",
                              style: TextStyle(
                                color: Color(0xff9376d1),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.history,
                                color: Color(0xff9376d1),
                                size: 40,
                              ),
                            ),
                            Text(
                              "History",
                              style: TextStyle(
                                color: Color(0xff9376d1),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/recharge.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "PLAN",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/card.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "Pulsa",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/web.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "Packet Data",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/profit.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "Invest",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/shield.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "BPJS",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/streaming_tv.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "Internet & \n Tv Cabel",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/insurance.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "Pocketsi",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/menu.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Text(
                          "Lanniya",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  width: 400,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Info dan Promo Spacial,",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 150,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/furniture _three.jpeg",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/furniture _three.jpeg",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: DotsIndicator(
                          dotsCount: 4,
                          decorator: DotsDecorator(
                            size: const Size.square(9.0),
                            activeSize: const Size(18.0, 9.0),
                            activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: Colors.grey[300]!,
                            activeColor: Colors.black,
                          ),
                          position: _currentPosition,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200,
                  width: 400,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Info dan Promo Spacial,",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffFDFBF7),
        selectedLabelStyle: const TextStyle(color: Color(0xff151921)),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff48268c),
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.label,
              color: Color(0xff48268c),
            ),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.scanner,
              color: Color(0xff48268c),
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              color: Color(0xff48268c),
            ),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff48268c),
            ),
            label: 'PROFILE',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff151921),
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

