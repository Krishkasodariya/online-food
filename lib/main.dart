import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_order/pizza.dart';
import 'package:food_order/dieting.dart';
import 'package:food_order/biryani.dart';
import 'package:food_order/login.dart';
import 'package:food_order/burger.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main()  {

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: ThemeData(primarySwatch: Colors.blue)));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class boarding {
  final String image;
  final String title;
  final String description;

  boarding({
    required this.image,
    required this.title,
    required this.description,
  });
}

class _MyAppState extends State<MyApp> {
  PageController _pageController = PageController();
  bool onlastpage = false;
  List<boarding> boardingdata = [
    boarding(
        image: "images/search.png",
        title: "Quick Search",
        description:
            "Discover The Best Foods From Over \n1000 Restaurants And Fast Delivery \n                 To Your DoorStap"),
    boarding(
        image: "images/food.png",
        title: "Variety Of Food",
        description:
            "Discover The Best Foods From Over \n1000 Restaurants And Fast Delivery \n                 To Your DoorStap"),
    boarding(
        image: "images/location.png",
        title: "Search For A Place",
        description:
            "Discover The Best Foods From Over \n1000 Restaurants And Fast Delivery \n                 To Your DoorStap"),
    boarding(
        image: "images/delivery.png",
        title: "Fast Shipping",
        description:
            "Discover The Best Foods From Over \n1000 Restaurants And Fast Delivery \n                 To Your DoorStap")
  ];

  @override
  Widget build(BuildContext context) {
    Widget items({required boarding data}) => Container(
          color: Colors.yellow,
          child: Column(children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(top: 95),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(data.image),
                      alignment: Alignment.center,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Text(
                data.title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Text(
                data.description,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ]),
        );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  onlastpage = (index == 3);
                });
              },
              controller: _pageController,
              itemCount: boardingdata.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => items(data: boardingdata[index]),

            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(3);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                onlastpage
                    ? Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 55),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => login(),
                                ));
                          },
                          child: Text("Get Started",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                              )),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(5),
                              minimumSize: MaterialStateProperty.all(
                                  Size(double.infinity, 55)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)))),
                        ),
                      )
                    : Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 55),
                        child: ElevatedButton(
                          onPressed: () {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text("Next",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                              )),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(5),
                              minimumSize: MaterialStateProperty.all(
                                  Size(double.infinity, 55)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)))),
                        ),
                      ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: boardingdata.length,
                    effect: JumpingDotEffect(
                      activeDotColor: Colors.black,
                      dotWidth: 14,
                      dotHeight: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
