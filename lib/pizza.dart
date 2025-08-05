import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/foodlist.dart';
import 'package:food_order/foodlist.dart';
import 'package:food_order/foodlist.dart';
import 'package:food_order/login.dart';
import 'package:food_order/pizza.dart';

class pizza extends StatefulWidget {
  const pizza({Key? key}) : super(key: key);

  @override
  State<pizza> createState() => _pizzaState();
}

class pizzaitems {
  final String images;
  final String price;
  final String review;
  final String name;

  pizzaitems(
      {required this.images,
      required this.name,
      required this.price,
      required this.review});
}

class _pizzaState extends State<pizza> {
  List<pizzaitems> pizzadata = [
    pizzaitems(
        images: "images/pizza1.png",
        name: "Veggie Pizza",
        price: "Rs. 240",
        review: "(760 review)"),
    pizzaitems(
        images: "images/pizza2.png",
        name: "Tomato Pizza",
        price: "Rs. 220",
        review: "(520 review)"),
    pizzaitems(
        images: "images/pizza3.png",
        name: "Pepperoni Pizza",
        price: "Rs. 220",
        review: "(620 review)"),
    pizzaitems(
        images: "images/pizza4.png",
        name: "Veggie Pizza",
        price: "Rs. 270",
        review: "(870 review)"),
    pizzaitems(
        images: "images/pizza5.png",
        name: "Margherita  Pizza",
        price: "Rs. 280",
        review: "(420 review)"),
  ];
  List<foodlist>pizzalistdata=[
    foodlist(
        review: "Top Of The Year",
        price: "240",
        images: "images/pizza1.png",
        name: "Veggie Pizza",
        weight: "Weight 540 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/pizza3.png",
        name: "Pepperoni ",
        weight: "Weight 540 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "270",
        images: "images/pizza4.png",
        name: "Veggie Pizza",
        weight: "Weight 540 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "280",
        images: "images/pizza5.png",
        name: "Margherita",
        weight: "Weight 540 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/pizza2.png",
        name: "Tomato Pizza",
        weight: "Weight 540 Gm"),
  ];

  @override

  Widget build(BuildContext context) {
    Widget pizzalistdesign({required foodlist pizzalistdata})=>Container(
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
                image: AssetImage(pizzalistdata.images),
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
                    pizzalistdata.review,
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
                    pizzalistdata.name,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    pizzalistdata.weight,
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
                      pizzalistdata.price,
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
    Widget pizzadesign({required pizzaitems pizzadata}) => Container(
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
                              pizzadata.review,
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
                              pizzadata.name,
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
                  image: AssetImage(pizzadata.images),
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
                        pizzadata.price,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      )),
                ),
              )
            ],
          ),
        );

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Text("Pizza"),),
      body: SingleChildScrollView(
        child: Container(

          child: Column(

            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: ListView.separated(
                  itemCount: pizzadata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      pizzadesign(pizzadata: pizzadata[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 1,
                  ),
                ),
              ), Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("Popular Pizza",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500)),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: pizzalistdata.length,
                    itemBuilder: (context, index) =>
                        pizzalistdesign(pizzalistdata: pizzalistdata[index]),
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
