import 'package:flutter/material.dart';
import 'package:food_order/foodlist.dart';
import 'package:food_order/login.dart';

class biryani extends StatefulWidget {
  const biryani({Key? key}) : super(key: key);

  @override
  State<biryani> createState() => _biryaniState();
}
class biryaniitems {
  final String images;
  final String price;
  final String review;
  final String name;

  biryaniitems(
      {required this.images,
        required this.name,
        required this.price,
        required this.review});
}
class _biryaniState extends State<biryani> {
  List<biryaniitems> biryanidata = [

    biryaniitems(
        images: "images/biryani5.png",
        name: "Hyderabadi  Biryani",
        price: "Rs. 220",
        review: "(520 review)"),
    biryaniitems(
        images: "images/biryani3.png",
        name: "Lucknowi Biryani",
        price: "Rs. 220",
        review: "(620 review)"),
    biryaniitems(
        images: "images/biryani4.png",
        name: "Calcutta Biryani",
        price: "Rs. 270",
        review: "(870 review)"),
    biryaniitems(
        images: "images/biryani2.png",
        name: "Thalassery Biryani",
        price: "Rs. 280",
        review: "(420 review)"),
    biryaniitems(
        images: "images/biryani6.png",
        name: "Sindhi Biryani",
        price: "Rs. 280",
        review: "(420 review)"),
  ];

  List<foodlist>biryanilistdata=[
    foodlist(
        review: "Top Of The Week",
        price: "270",
        images: "images/biryani4.png",
        name: "Calcutta",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/biryani5.png",
        name: "Hyderabadi",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/biryani3.png",
        name: "Lucknowi",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "280",
        images: "images/biryani2.png",
        name: "Thalassery",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "280",
        images: "images/biryani6.png",
        name: "Sindhi Biryani",
        weight: "Weight 340 Gm"),

  ];


  @override
  Widget build(BuildContext context) {
    Widget biryanilistdesign({required foodlist biryanilistdata})=>Container(
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
                image: AssetImage(biryanilistdata.images),
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
                    biryanilistdata.review,
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
                    biryanilistdata.name,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    biryanilistdata.weight,
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
                      biryanilistdata.price,
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

    Widget biryanidesign({required biryaniitems biryanidata}) => Container(
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
                          biryanidata.review,
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
                          biryanidata.name,
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
              image: AssetImage(biryanidata.images),
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
                    biryanidata.price,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  )),
            ),
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Text("Biryani"),),
      body:SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: ListView.separated(
                  itemCount: biryanidata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      biryanidesign(biryanidata: biryanidata[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 1,
                  ),
                ),
              ), Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("Popular Biryani",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500)),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: biryanilistdata.length,
                    itemBuilder: (context, index) =>
                        biryanilistdesign(biryanilistdata: biryanilistdata[index]),
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
