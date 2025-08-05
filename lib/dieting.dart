import 'package:flutter/material.dart';
import 'package:food_order/foodlist.dart';
import 'package:food_order/login.dart';

class dyting extends StatefulWidget {
  const dyting({Key? key}) : super(key: key);

  @override
  State<dyting> createState() => _dytingState();
}

class dytingitems {
  final String images;
  final String price;
  final String review;
  final String name;

  dytingitems(
      {required this.images,
      required this.name,
      required this.price,
      required this.review});
}

class _dytingState extends State<dyting> {
  List<dytingitems> dytingdata = [
    dytingitems(
        images: "images/d1.png",
        name: "Dieting 1 ",
        price: "Rs. 140",
        review: "(760 review)"),
    dytingitems(
        images: "images/d2.png",
        name: "Dieting 2",
        price: "Rs. 150",
        review: "(520 review)"),
    dytingitems(
        images: "images/d3.png",
        name: "Dieting 3",
        price: "Rs. 170",
        review: "(620 review)"),
    dytingitems(
        images: "images/d4.png",
        name: "Dieting 4",
        price: "Rs. 110",
        review: "(870 review)"),
    dytingitems(
        images: "images/d1.png",
        name: "Dieting 5",
        price: "Rs. 140",
        review: "(420 review)"),
  ];
  List<foodlist>dietinglistdata=[
    foodlist(
        review: "Top Of The Week",
        price: "150",
        images: "images/d2.png",
        name: "Dieting 2",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "170",
        images: "images/d3.png",
        name: "Dieting 3",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "140",
        images: "images/d1.png",
        name: "Dieting 1",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "140",
        images: "images/d1.png",
        name: "Dieting 5",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "110",
        images: "images/d4.png",
        name: "Dieting 4",
        weight: "Weight 240 Gm"),
  ];

  @override
  Widget build(BuildContext context) {
    Widget dietinglistdesign({required foodlist dietinglistdata})=>Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 182,
      decoration: BoxDecoration(
          color: Color(0xffbbffad),
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Container(
        child: Stack(children: [
          Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage(dietinglistdata.images),
                width: 150,
                height: 150,
              )),
          Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    dietinglistdata.review,
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    dietinglistdata.name,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    dietinglistdata.weight,
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                          MaterialStateProperty.all(Size(80, 50)),
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green),
                          alignment: Alignment.bottomLeft,
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      topRight: Radius.circular(25))))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10,left: 10),
                        child: Icon(Icons.add),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "Rs.",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      dietinglistdata.price,
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );

    Widget dytingdesign({required dytingitems dytingdata}) => Container(
          height: 400,
          width: 330,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: 230,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40))),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Icon(Icons.star, size: 15, color: Colors.black),
                            Icon(Icons.star, size: 15, color: Colors.black),
                            Icon(Icons.star, size: 15, color: Colors.black),
                            Icon(Icons.star, size: 15, color: Colors.black),
                            Icon(Icons.star_outline_sharp,
                                size: 15, color: Colors.black),
                            Text(
                              dytingdata.review,
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              dytingdata.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage(dytingdata.images),
                  width: 195,
                  height: 195,
                  alignment: Alignment.topRight,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 23, right: 20),
                  height: 55,
                  width: 100,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.yellow,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        dytingdata.price,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      )),
                ),
              )
            ],
          ),
        );

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Text("Dieting "),),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: ListView.separated(
                  itemCount: dytingdata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      dytingdesign(dytingdata: dytingdata[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 1,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("Popular Dieting",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500)),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: dietinglistdata.length,
                    itemBuilder: (context, index) =>
                        dietinglistdesign(dietinglistdata: dietinglistdata[index]),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
